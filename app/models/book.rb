class Book < ApplicationRecord
  belongs_to :user

  vimo_expand owner: :user
end
