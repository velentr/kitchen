# frozen_string_literal: true

# Map cook requests to actions on the database
class CooksController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @cook = @recipe.cooks.create
    redirect_to recipe_path(@recipe)
  end
end
