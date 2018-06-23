class PagesController < ApplicationController
  def home
    @advert = TestAd.all.sample
    @recipes = Recipe.all 
  end

  def about
  end

  def contact
  end
end
