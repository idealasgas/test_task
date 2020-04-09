require 'pathname'

class Parser
  def initialize(filename)
    @filename = filename
  end

  def parse
    path = Pathname.new(@filename)
    raise 'FileNotFound' unless path.exist?
    file = File.open(@filename, 'r')
    parsed(file)
  ensure
    file.close unless file.nil?
  end

  private
  def parsed(file)
    file.readlines.each_with_object(Hash.new { |h, k| h[k] = [] }) do |line, parsed|
      uri_and_ip = line.split
      parsed[uri_and_ip[0]] << uri_and_ip[1]
    end
  end
end
