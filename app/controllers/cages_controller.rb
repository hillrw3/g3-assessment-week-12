class CagesController < ApplicationController

  def index

  end

  def new
    @cage = Cage.new
  end

end