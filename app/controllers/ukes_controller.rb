class UkesController < ApplicationController
  def create
    @uke = Uke.create(character_id: params[:character_id])
    redirect_to characters_url
  end
end
