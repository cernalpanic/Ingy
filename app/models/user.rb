class Monologue::User < ActiveRecord::Base
  has_many :posts

  has_secure_password

  validates_presence_of :password, on: :create
  validates_presence_of :name
  validates :email , presence: true, uniqueness: true


  def can_delete?(user)
    return false if self==user
    return false if user.posts.any?
    true
  end
end
class User < ActiveRecord::Base
  enum role: [:user, :vip, :admin]
  after_initialize :set_default_role, :if => :new_record?
  has_one :math_ladder
  has_many :practices

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
