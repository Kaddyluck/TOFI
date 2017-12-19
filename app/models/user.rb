class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  validates :login, :fio, :document_num, :phone_num, presence: true, uniqueness: true
  validates :dob, :document_type, presence: true
end
