class User < ActiveRecord::Base
  acts_as_authentic do |c|
     c.crypto_provider = Authlogic::CryptoProviders::SCrypt
  end
  after_create :activate_user
    def activate_user
      #if a user is successfully created set the active field to true
      self.active = true
      self.approved = true
      self.confirmed = true
      self.save
    end
  # def valid_password?(entered_password) 
  #   #TODO Implement password checking  
  #   if entered_password == password 
  #     return true 
  #   else
  #     return false 
  #   end   
  # end
end
