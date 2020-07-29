class User < ApplicationRecord

	attr_accessor :login

	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :invitable, :database_authenticatable, :registerable, :confirmable,
				 :recoverable, :rememberable, :trackable, :validatable

	validates :nombre, presence: { message: "en blanco" },
	length: { minimum: 3, :message => "Mínimo 3 caracteres" }

	validates :apellido, presence: { message: "en blanco" },
	length: { minimum: 3, :message => "Mínimo 3 caracteres" }

	validates :username, presence: { message: "Usuario en blanco" },
	length: { maximum: 8,  :message => "Máximo 8 caracteres para el usuario" },
	:uniqueness => { case_sensitive: false, message: "Usuario ya existe, por favor intente con otro usuario" }

	def self.find_for_database_authentication(warden_conditions)
		conditions = warden_conditions.dup
		if login = conditions.delete(:login)
			where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
		else
			where(conditions).first
		end
	end

def self.from_omniauth(auth)
		# Creates a new user only if it doesn't exist
		where(email: auth.info.email).first_or_initialize do |user|
			user.nombre = auth.info.name
			user.email  = auth.info.email
		end
	end

end
