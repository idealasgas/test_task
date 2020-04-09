require 'calculator'

RSpec.describe Calculator do
  let(:incoming_hash) {{'/help_page/1': ['126.318.035.038', '126.318.035.038']}}
  subject {Calculator.new(incoming_hash)}

  it 'has calculate_views method' do
    expect(subject).to respond_to(:calculate_views)
  end

  it 'has calculate_unique_views method' do
    expect(subject).to respond_to(:calculate_unique_views)
  end

  describe '#calculate_views' do
    it 'returns hash with values of integer' do
      result = subject.calculate_views

      expect(result).to be_kind_of(Hash)
      expect(result.values.first).to be_kind_of(Integer)
      expect(result.values.first).to eq 2
    end
  end

  describe '#calculate_unique_views' do
    it 'returns hash with values of integer' do
      result = subject.calculate_unique_views

      expect(result).to be_kind_of(Hash)
      expect(result.values.first).to be_kind_of(Integer)
      expect(result.values.first).to eq 1
    end
  end
end
