class CharactersController < ApplicationController
  def index
    @characters = Character.all.order("created_at DESC")
  end

  def edit
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to characters_url, notice: "「#{@character.name}」を登録しました！"
    else
      render :new
    end
  end

  def destroy
    character = Character.find(params[:id])
    character.destroy
    redirect_to characters_url, notice: "「#{character.name}」を削除しました！"
  end

  def update
    character = Character.find(params[:id])
    binding.irb
    character.update!(character_params)
    redirect_to characters_url, notice: "「#{character.name}」を更新しました！"
  end

  private

  def character_params
    params.require(:character).permit(:name)
  end
end
