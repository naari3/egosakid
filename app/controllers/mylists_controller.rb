# frozen_string_literal: true

class MylistsController < ApplicationController
  def show
    @mylist = Mylist.find_by!(niconico_mylist_id: params[:id])
  end

  def new
    @mylist = Mylist.new
  end

  def create
    @mylist = Mylist.new(post_params)

    if @mylist.save
      redirect_to mylist_index_path
    else
      render :new, status: 400
    end
  end

  private

  def post_params
    
  end
end
