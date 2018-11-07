class Comment < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true

  before_save :default_values

  def default_values
    self.likes ||= 0
    self.dislikes ||= 0
  end
end