json.extract! test_ad, :id, :title, :body, :image, :created_at, :updated_at
json.url test_ad_url(test_ad, format: :json)
