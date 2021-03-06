require 'printer'

RSpec.describe Printer do
  let (:incoming_array) { [['route', 4], ['route1', 3]] }

  it 'has #print method' do
    expect(described_class.new(incoming_array)).to respond_to(:print)
  end

  describe '#print' do
    it 'prints to stdout' do
      expect {described_class.new(incoming_array).print}.to output(/./).to_stdout
    end
  end
end
