class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true

    before_create :downcase_email

    has_many :workouts
    
    private

    def downcase_email
        self.email = email.downcase
    end
end
