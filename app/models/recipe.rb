class Recipe < ApplicationRecord
  has_many :ingredients
  has_many :instructions

  accepts_nested_attributes_for :ingredients,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['title'].blank? }

  validates_presence_of :title

  accepts_nested_attributes_for :instructions,
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['verb'].blank? }
end
