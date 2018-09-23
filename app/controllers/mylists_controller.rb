# frozen_string_literal: true

class MylistsController < ApplicationController
  def index
    @mylists = current_user.mylists
  end

  def show
    @mylist = Mylist.find_by!(niconico_mylist_id: params[:id])
    @items = @mylist.niconico_mylist.items
    @items = @items.select { |item| item.title.include? search_params[:title] } if search_params[:title]
  end

  def new
    @mylist = Mylist.new
  end

  def create
    @mylist = Mylist.new(create_params)

    if @mylist.save
      UserMylist.create(mylist: @mylist, user: current_user)
      redirect_to mylists_path
    else
      render :new, status: 400
    end
  end

  private

  def create_params
    params.require(:mylist).permit(:niconico_mylist_id)
  end

  def search_params
    params.permit(:title)
  end
end
