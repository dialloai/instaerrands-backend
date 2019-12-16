class ErrandsController < ApplicationController
   
def index
    render json: Errand.all.to_json(serialized_data)
end

def show
    render json: Errand.find(params[:id])
end


private
  
def serialized_data
    {
        :include=> {
            :user=> {
                :only=>[:first_name,:last_name, :user_type,:user_id]
            }
        },
        :except=>[:username, :password, :created_at, :updated_at]
    }
end 

end
