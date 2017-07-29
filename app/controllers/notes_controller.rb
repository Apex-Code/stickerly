class NotesController < ApplicationController
  
  before_action: :find_note, only: [:edit, :update, :show, :destroy]

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

private

  def find_note
  	@note = Note.find(params[:id])
  end
  
  def note_params
  	params.require(:note).permit(:title, :content)

end
