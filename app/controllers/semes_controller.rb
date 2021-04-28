class SemesController < ApplicationController
  def create
    @seme = Seme.create(character_id: params[:character_id])
    redirect_to characters_url
  end
end
