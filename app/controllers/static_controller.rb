class StaticController < ApplicationController
  def home
  end

  def new_questionnaire
    @items = Item.all
  end

end
