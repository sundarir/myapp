ActionMailer::Base.delivery_method=:smtp
ActionMailer::Base.smtp_settings = { 

      :address              => "smtp.gmail.com",  
      :port                 => 587,  
      :domain               => "invoscape.com",  
     :user_name            => "no-reply@invoscape.com", #Your user name
      :password             => "yes162replyin" # Your password
     
   }