class PagesController < ApplicationController
    def home
        @basic_plan = Find.plan(1) #allows us to access data about plans
        @pro_plan = Find.plan(2) #allows us to access data about plan  
    end
    
    def about
    end
end
