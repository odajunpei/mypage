class HomesController < ApplicationController

  def top
    @applications = Application.all
  end

  def profile
  end
end
