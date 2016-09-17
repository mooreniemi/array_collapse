#include "ruby.h"

void Init_array_collapse();

VALUE method_collapse(VALUE self, VALUE args) {
  long len = RARRAY_LEN(self);
  VALUE result = rb_ary_new2(len);
  VALUE stack = rb_ary_new();
  st_table *seen_nodes;
  st_data_t id;
  seen_nodes = st_init_numtable();
  st_insert(seen_nodes, (st_data_t)self, (st_data_t)Qtrue);

#ifdef LOGGING
  FILE *f = fopen("clog.txt", "w");
  if (f == NULL) {
    printf("no log file found\n");
    exit(1);
  }
  fprintf(f, "len: %lu\n", len);
  fprintf(f, "array: %s\n", RSTRING_PTR(rb_ary_to_s(self)));
#endif

  rb_ary_push(stack,self);
  while(RARRAY_LEN(stack) > 0) {
    VALUE array = rb_ary_pop(stack);
    long i;
    for(i = 0; i < RARRAY_LEN(array); i++) {
      VALUE e = RARRAY_AREF(array,i);
      id = (st_data_t)e;
      if (st_lookup(seen_nodes, id, 0)) {
        // drop recursive node
        break;
      }
      switch (TYPE(e)) {
        case T_ARRAY:
          st_insert(seen_nodes, id, (st_data_t)Qtrue);
          rb_ary_push(stack, e);
          break;
        default:
          if (rb_block_given_p()) {
            e = rb_yield(e);
          }
          if (!NIL_P(e)) {
            rb_ary_push(result, e);
          }
          break;
      }
    }
  }
  st_free_table(seen_nodes);
  return result;
}

void Init_array_collapse() {
  rb_define_method(rb_cArray, "collapse", method_collapse, -2);
}
