require 'sorter'

RSpec.describe Sorter do
  let (:incoming_hash) {{'/': 6, '/home': 10}}
  subject {Sorter.new(incoming_hash)}

  it 'has #sort method' do
    expect(subject).to respond_to(:sort)
  end

  describe '#sort' do
    it 'should return sorted array of arrays' do
      result = subject.sort

      expect(result).to be_kind_of Array
      expect(result.first).to be_kind_of Array
      expect(result[0][1]).to be > result[1][1]
    end
  end
end
