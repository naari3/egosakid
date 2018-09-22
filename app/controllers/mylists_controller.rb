# frozen_string_literal: true

class MylistsController < ApplicationController
  def show
    @mylist = Mylist.find_by!(niconico_mylist_id: params[:id])
  end
end
