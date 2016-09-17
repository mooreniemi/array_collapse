require 'array_collapse'

RSpec.describe Array do
  describe '#collapse' do
    it 'lives on Array' do
      expect([1].respond_to?(:collapse)).to eq(true)
    end
    it 'applies a block to every element' do
      expect([1, 2].collapse { |e| e * 2 }).to eq([2, 4])
    end
    it 'flattens a nested array' do
      expect([1, [2]].collapse).to eq([1, 2])
    end
    it 'flattens and maps' do
      expect([1, [2, [3]]].collapse { |e| e * 2 }).to eq([2, 4, 6])
    end
    it 'drops nils' do
      expect([nil, 1, [2]].collapse).to eq([1, 2])
      expect([1, nil, [2, [3, nil]]].collapse { |e| e.nil? ? e : e * 2 }).
        to eq([2, 4, 6])
    end
    it 'handles recursive arrays' do
      rec_a = [1, [2, [3]]]
      rec_a << rec_a
      expect(rec_a.collapse).to eq([1, 2, 3])
    end
  end
end
