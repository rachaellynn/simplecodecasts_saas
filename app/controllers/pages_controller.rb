class PagesController < ApplicationController
    def home
        @basic_plan = Plan.find(1) #allows us to access data about plans
        @pro_plan = Plan.find(2) #allows us to access data about plan  
    end
    
    def about
    end
end
