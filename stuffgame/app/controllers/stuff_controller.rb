class StuffController < ApplicationController
  def index
    @stuff = Stuff.all
  end

  def new
    @stuff = Stuff.new(new_stuff_params)
  end

  def randomize
    item = Stuff.random
    redirect_to new_stuff_path(name: item.name, description: item.description)
  end

  def old_randomize
    item = Stuff.random
    redirect_to new_stuff_path(name: item.name, description: item.description)
  end

  def create
    @stuff = Stuff.new(stuff_params)

    if @stuff.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def new_stuff_params
      params.permit(:name, :description)
    end

    def stuff_params
      params.require(:stuff).permit(:name, :description)
    end
end
