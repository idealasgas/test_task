class Calculator
  def initialize(parsed)
    @parsed = parsed
  end

  def calculate_views
    @parsed.map { |uri, ips| [uri, ips.count] }.to_h
  end

  def calculate_unique_views
    @parsed.map { |uri, ips| [uri, ips.uniq.count] }.to_h
  end
end
