require 'calculator'

RSpec.describe Calculator do
  let(:incoming_hash) {{'/help_page/1': ['126.318.035.038', '136.343.035.787']}}
  subject {Calculator.new(incoming_hash)}

  it 'has calculate_views method' do
    expect(subject).to respond_to(:calculate_views)
  end

  it 'has calculate_unique_views method' do
    expect(subject).to respond_to(:calculate_unique_views)
  end
end
