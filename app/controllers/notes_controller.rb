class NotesController < ApplicationController
  before_action :check_for_login

  def index
    @notes = @current_user.notes
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.create note_params
    @current_user.notes << note
    redirect_to root_path
  end

  def show
    @note = @current_user.notes
  end

  private
  def note_params
    params.require(:note).permit(:title, :post)
  end
end
