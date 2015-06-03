class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
     #     evise :database_authenticatable, :registerable,:confirmable,:token_authenticatable,
     # :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:name]
	validates :password, presence: true, length: {minimum: 2, maximum: 120}, on: :create
	validates :password, length: {minimum: 2, maximum: 120}, on: :update, allow_blank: true
	 ROLES = %w[ADMIN HL1 HL2 SAV]
  # after_update_valide { Notifier.welcome(self).deliver }

	def is?( requested_role )
    self.role == requested_role.to_s
  end

 

end
