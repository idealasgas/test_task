require 'parser'

describe Parser do
  it 'should respond to #parse method' do
    expect(subject).to respond_to(:parse)
  end
end
