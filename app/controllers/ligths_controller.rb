class LigthsController < ApplicationController
  def on
    ligth = Ligth.new 17
    ligth.on
  end

  def off
    ligth = Ligth.new 17
    ligth.off
  end
end
