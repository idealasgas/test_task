require 'sorter'

RSpec.describe Sorter do
  let (:incoming_hash) {{'/': 6, '/home': 10}}
  subject {Sorter.new(incoming_hash)}

  it 'has #sort method' do
    expect(subject).to respond_to(:sort)
  end
end
