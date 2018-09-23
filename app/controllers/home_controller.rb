# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @mylists = current_user.mylists if current_user
  end
end
