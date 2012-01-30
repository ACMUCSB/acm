class User < ActiveRecord::Base
  attr_accessible :full_name, :nickname, :email, :password, :password_confirmation, :grad_year
  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email

  def self.authenticate(email, password)
    user= find_by_email(email)
    if user && user.encrypted_password == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.encrypted_password = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def admin?
    false # change this
  end
  
  def logged_in?
    # TO DO: return true if session[:user_id] exists, else false
    
  end


end
