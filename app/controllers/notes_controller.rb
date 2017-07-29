class NotesController < ApplicationController
  
  before_action: :find_note, only: [:edit, :update, :show, :destroy]

  def index
    @notes = Note.all.order('created_at DESC')
  end

  def new
  	@note = Note.new
  end

  def create
  	@note = Note.new(note_params)
  	  if @note.save
  	  	redirect_to  notes_path(@note)
  	  else
  	  	render 'new'
  	  end
  end

  def edit
  end

  def update
  end

  def destroy
  	@note.destroy
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
