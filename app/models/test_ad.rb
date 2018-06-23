class TestAd < ApplicationRecord
  validates_presence_of :title

  mount_uploader :image, TestAdUploader
end
