require_relative '../lib/stats'

describe '#start' do
  it 'asks to provide filename if none provided' do
    expect {start}.to output("enter name of log file\n").to_stdout
  end

  it 'outputs parsed log when file provided' do
    ARGV.replace ['webserver.log']
    expect {start}.to output(/.* \d/).to_stdout
  end

  it 'reports that file format is incorrect if it is incorrect' do
    ARGV.replace ['aaaaaaaa.jpeg']
    expect {start}.to output("file format is incorrect\n").to_stdout
  end
end
