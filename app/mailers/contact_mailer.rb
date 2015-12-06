class ContactMailer < ActionMailer::Base
    default to: 'rachael@wordaroundtown.com'
    
    def contact_email(name, email, body)
        @name = name
        @email = email
        @body = body
        
        mail(:from => email, subject: 'message from contact form')
    end
    
end
