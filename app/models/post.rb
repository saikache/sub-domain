class Post < ApplicationRecord
  belongs_to :blog, touch: true
end
