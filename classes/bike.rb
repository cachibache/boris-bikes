class Bike

  def initialize
    @status = false
  end

  def broken?
    @status
  end

  def set_status status
    @status = status
  end
end
