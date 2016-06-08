class User < ActiveRecord::Base
  authenticates_with_sorcery!

  #validates :email, presence: true, uniqueness: true, email: true
  validates :email, presence: true, uniqueness: true 
  
  #validates :password, length: { minimum: 1 }, if: :password_update?
  validates :password, length: { minimum: 1 }, if: -> { new_record? || changes[:crypted_password] }

  #validates :password, confirmation: true
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  
  #validates :password_confirmation, presence: true, if: :password_update?
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }



  # FIXME
  # def admin?
    # true
  # end

  validates_presence_of :name
  before_save :assign_role

  def assign_role
    self.role = Role.find_by name: "Regular" if self.role.nil?
  end

  def admin?
    self.role.name == "Admin"
  end

  def seller?
    self.role.name == "Seller"
  end

  def regular?
    self.role.name == "Regular"
  end
  

  
  private

  def password_update?
    password.present? || new_record?
  end

  belongs_to :role
end
