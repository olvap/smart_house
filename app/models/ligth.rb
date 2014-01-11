require 'pi_piper'
include PiPiper

class Ligth
  attr_accessor :pin

  def initialize
    @pin = PiPiper::Pin.new(:pin => 18, :direction => :out)
  end

  def on
    @pin.on
  end

  def off
    @pin.off
  end
end
