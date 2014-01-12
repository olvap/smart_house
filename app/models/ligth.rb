require 'pi_piper'
include PiPiper

class Ligth
  attr_accessor :pin

  def initialize pin
    @pin = PiPiper::Pin.new(:pin => pin, :direction => :out)
  end

  def on
    @pin.on
  end

  def off
    @pin.off
  end

  def on?
    @pin.read == 1
  end

  def off?
    @pin.read == 0
  end

  def press
    if on?
      off
    else
      on
    end
  end

end
