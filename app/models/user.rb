class User < ActiveRecord::Base
    has_secure_password 
    validates_presence_of :name, :password

    has_many :categoies, through: :toys 
    has_many :toys 

    accepts_nested_attributes_for :toys
end 
