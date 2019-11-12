class User < ApplicationRecord
  enum role: [:author, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_initialize :set_default_role, :if => :new_record?
  has_many :articles
  has_many :comments
  
  def set_default_role 
    self.role ||= :author 
  end

end
