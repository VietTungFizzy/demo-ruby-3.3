require_relative "observer_impl"

class TelescopeScheduler
  # other classes can register to get notification
  # when the schedule changes
  include Observable

  def initialize
    @observer_list = [] # fols with telescope time
  end

  def add_viewer(viewer)
    @observer_list << viewer
  end
  #...
end
