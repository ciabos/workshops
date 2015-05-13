class ProfileController < ApplicationController
  before_action :authenticate_user!
  expose_decorated(:user)
  def show
    self.user = current_user
  end
end