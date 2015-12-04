class ContactsController < ApplicationController
    def new
        @contact = Contact.new #creates a BLANK OBJECT in the server's memory
    end
   
    def create
    end
end