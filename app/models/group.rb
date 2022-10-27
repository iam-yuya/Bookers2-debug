class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users

  validates :name, presence: true
  validates :introduction, presence: true
  has_one_attached :image

  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end

end
