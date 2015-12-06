class ContactsController < ApplicationController
    def new
        @contact = Contact.new #creates a BLANK OBJECT in the server's memory
    end
   
    def create
        @contact = Contact.new(contact_params)
        
        if @contact.save
            name = params[:contact][:name]
            email = params[:contact][:email]
            body = params[:contact][:comments]
            ContactMailer.contact_email(name,email,body).deliver #ContactMailer refers to contact_mailer.rb in mailers. contact_email is the function that i defined there.
            flash[:success] = "message sent"
            redirect_to new_contact_path #, notice: "contact saved"
        else
            flash[:danger] = "error -- message has not been sent" #"error" seems to be deprecated
            redirect_to new_contact_path #, notice: "error occurred"
        end
    end
    
    
    private
    
    def contact_params
        params.require(:contact).permit(:name, :email, :comments)
    end

end
