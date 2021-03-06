# frozen_string_literal: true

class FollowsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to profile_path(@user.id)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to profile_path(@user.id)
  end
end
