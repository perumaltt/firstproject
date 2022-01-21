class User < ApplicationRecord

    has_many :ups

    has_many :cars
    
end
