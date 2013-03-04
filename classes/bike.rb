class Bike

  attr_accessor :status

  def initialize
    @status = false
  end

  def broken?
    @status
  end
end
