class TopicsController < ApplicationController
  before_action :check_for_login

  def index
    @topics = @current_user.topics
  end

  def new
    @topic = Topic.new
  end

  def create
    topic = Topic.create topic_params
    @current_user.topics << topic
    redirect_to root_path
  end

  def show
    @topic = Topic.find params[:id]
  end

  private
  def topic_params
    params.require(:topic).permit(:title)
  end

end
