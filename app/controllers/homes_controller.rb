class HomesController < ApplicationController

  def top
    @applications = Application.all
  end
end
