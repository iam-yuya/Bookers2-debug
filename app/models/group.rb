class Group < ApplicationRecord
  has_one_attached :image
  belongs_to :owner, class_name: 'User'
  has_many :group_users, dependent: :destroy

  validates :name, presence: true
  validates :introduction, presence: true


  def get_image
    (image.attached?) ? image : 'no_image.jpg'
  end

  def is_owned_by?(user)
    owner.id == user.id
  end

end
