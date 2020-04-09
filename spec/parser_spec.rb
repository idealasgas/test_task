require 'parser'

describe Parser do
  let (:existing_file) {'webserver.log'}
  let (:non_existing_file) {'i_do_not_exist.log'}

  it 'should respond to #parse method' do
    parser = described_class.new(existing_file)
    expect(parser).to respond_to(:parse)
  end

  describe '#parse' do
    it 'should raise error if provided file not found' do
      parser = described_class.new(non_existing_file)

      expect { parser.parse }.to raise_error('FileNotFound')
    end

    it 'should return parsed hash' do
      parser = described_class.new(existing_file)

      expect(parser.parse).to be_kind_of(Hash)
      expect(parser.parse).not_to be_empty
    end
  end
end
