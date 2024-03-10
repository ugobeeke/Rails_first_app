class UsersController < ApplicationController
  def create
  end
  skip_before_action :verify_authenticity_token
end
