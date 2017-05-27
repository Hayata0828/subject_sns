class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :show]
  def top
  end

  def index
    @tweets = Tweet.all.order(created_at: :desc)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    redirect_to("/tweets/index")
  end

  def edit
    @tweet = Tweet.find_by(id: params[:id])
  end

  def update
    @tweet = Tweet.find_by(id: params[:id])
    @tweet.update(tweet_params)
    redirect_to('/tweets/index')
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to("/tweets/index")
  end


  private
  def tweet_params
    params.require(:tweet).permit(:content, :category, :user_id)
  end
end
