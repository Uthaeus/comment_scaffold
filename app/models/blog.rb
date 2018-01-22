class Blog < ApplicationRecord
  
  validates_presence_of :title, :date, :body

  acts_as_commontable dependent: :destroy
end
