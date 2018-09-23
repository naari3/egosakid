# frozen_string_literal: true

module SessionConcern
  extend ActiveSupport::Concern

  included do
    before_action :login_required
  end

  def login_required
    redirect_to root_path, alert: 'ログインしてください' unless current_user
  end
end
