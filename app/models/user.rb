class User < ApplicationRecord
    has_secure_password

    validates :email, presence: true, uniqueness: { case_sensitive: false },
            format: {
                with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i,
                message: :invalid
            }
    validates :username, presence: true, uniqueness: { case_sensitive: false }, 
            length: { in: 3..15},
            format: {
                with: /\A[a-z0-9A-Z]+\z/,
                message: :invalid
            }
    validates :password, length: {minimum: 7}

    #before_save :downcase_attributes
    
    private

    #def downcase_attributes
        #self.username = username.downcase
        #self.email = email.downcase
      #end
end
