class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def create
    @list = List.new(params[:list])
    @list.save
  end

  def new
    @list = List.new
  end

  #def edit
    #@list = List.find(params[:id])
  #end

  def show
    @list = List.find(params[:id])
  end

  #def update
    #@list = List.find(params[:id])
    #@list.update(params[:list])
  #end

  #def destroy
    #@list = List.find(params[:id])
    #@list.destroy
    #redirect_to lists_path, status: :see_other
  #end

end
