class StaticController < ApplicationController
  def home
  end

  def liste_question
    @items = Item.all
  end
end
