# frozen_string_literal: true

class UsersController < ApplicationController
  def profile
    @user = User.find(params[:id])
    @user_created_events = @user.created_events
    @user_attended_events = @user.attended_events
  end

  def index
    @users = User.all
  end
end
