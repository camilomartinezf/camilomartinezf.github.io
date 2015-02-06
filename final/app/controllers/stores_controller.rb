
class StoresController < ApplicationController

  def index
    @stores = Store.all
  end

  def show
    # do something with params[:id]
    @stores = Store.find_by(id: params["id"])
    @users = User.where(store_id: @store.id)
    @transactions = []
    @users.each do |user|
      @transactions << Transaction.find_by(id: user.store_id)
    end
  end

  def new
    
  end


  def create
    
  end


  def edit
    
  end


  def update
    
  end

  def destroy
    
  end
end
