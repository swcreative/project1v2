class TagsController < ApplicationController

  def new
  end

  def create
    @note = Note.find note_params
    @tag = @note.tag.create(params[:tag].permit(:tag))

    redirect_to post_path(@note)
  end
end
