require_relative 'dockingstation'

class Van
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def load(bike)
    @bikes << bike
  end

  def unload
    raise ("Van empty") if empty?
    @bikes.pop
  end

  private
  def empty?
  	@bikes.length == 0
  end
end
