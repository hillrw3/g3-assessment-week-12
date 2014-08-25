class CagesController < ApplicationController

  def index
    @cages = Cage.all
  end

  def new
    @cage = Cage.new
  end

  def create
    @cage = Cage.new(name: params[:cage][:name],
                     year: params[:cage][:year],
                     synopsis: params[:cage][:synopsis]
    )

    if @cage.save
      redirect_to root_path
    else
      render :new
    end
  end

end