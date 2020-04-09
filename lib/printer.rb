class Printer
  def initialize(array)
    @array = array
  end

  def print(prefix = '')
    @array.each do |route, number|
      puts "#{route} - #{number} #{prefix} visits"
    end
  end
end
