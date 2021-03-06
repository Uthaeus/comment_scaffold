module RecipesHelper
  def image_generator(height:, width:)
    "http://via.placeholder.com/#{width}x#{height}"
  end

  def recipe_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '400', width: '600')
    end
  end
end
