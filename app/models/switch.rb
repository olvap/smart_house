require 'pi_piper'
require './ligth'
require 'pry'

include PiPiper

class Switch

  def initialize pin, ligth_pin
    PiPiper::Pin.new(:pin => pin, :direction => :in, :pull => :down)
    ligth = Ligth.new ligth_pin
    after :pin => pin, :goes => :high do
      ligth.press
    end
  end

end
