class PetsController < ApplicationController
  
  def index
    @user = User.find(params[:user_id])
    @pet = User.find(params[:user_id]).pet.new
    render "index"
  end
  
  def create
    pet = Pet.create(pet_params)
  end
    
  def edit
  end
  
  def show
  end
  
  def update
  end
  
  def destroy
      pet = Pet.find(params[:id])
      pet.delete
      redirect_to "/pets"
  end
  
private

  def pet_params
    params.require(:pet).permit(:name,:species,:gender,:age,:user_id)
  end
  
end
