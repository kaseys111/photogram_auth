class Comment < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :photo_id, :presence => true
  validates :body, :presence => true

  belongs_to :comment
  belongs_to :user
  
end
