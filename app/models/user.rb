class User < ActiveRecord::Base
  acts_as_authentic do |c|
     c.crypto_provider = Authlogic::CryptoProviders::SCrypt
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
