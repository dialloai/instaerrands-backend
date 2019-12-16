class ErrandRunnersController < ApplicationController

    def index
        render json: ErrandRunner.all.to_json(serialized_data)
    end
    
    private
      
    def serialized_data
        {
            :include=> {
                :user=> {
                    :only=>[:user_id, :first_name, :last_name, :username, :password, :user_type]
                },
                :errand=> {
                  :only=>[:errand_id, :errand_name, :location, :errand_order, :priority, :pay, :notes]
              }
            },
            :except=>[:created_at, :updated_at]
        }
    end
end
