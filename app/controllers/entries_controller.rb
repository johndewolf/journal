class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def new
    @entry = Entry.new
    @categories = Category.all
  end

  def create
    @entry = Entry.new(entry_params)
    @categories = Category.all
      if @entry.save
        redirect_to @entry, notice: 'Entry was successfully created'
      else
        render action: 'new'
      end

  end

  def show
    @entry = Entry.find(params[:id])
    @selected_categories = @entry.categories
  end

  def edit
    @entry = Entry.find(params[:id])
        @categories = Category.all
  end

  def update
    @entry = Entry.find(params[:id])
    @categories = Category.all
    if @entry.update(entry_params)
      redirect_to @entry, notice: 'Entry was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    if @entry.destroy
      redirect_to entries_url, notice: 'Entry was deleted'
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:title, :content, :category_ids => [])
  end
end
