class NotesController < ApplicationController


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
  end
  
  def note_params
  	params.require(:note).permit(:title, :content)

end
