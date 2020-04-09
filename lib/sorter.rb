class Sorter
  def initialize(hash)
    @hash = hash
  end

  def sort
    @hash.sort { |a, b| b[1] <=> a[1] }
  end
end
