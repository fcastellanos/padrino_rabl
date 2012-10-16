class Task < ActiveRecord::Base
  validates_presence_of :title, :user_id

  belongs_to :user
end
