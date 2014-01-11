class LigthsController < ApplicationController
  def on
    ligth = Ligth.new
    ligth.on
  end

  def off
    ligth = Ligth.new
    ligth.off
  end
end
