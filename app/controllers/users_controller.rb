class UsersController < ApplicationController
    
    def index
        render json: User.all.to_json(serialized_data)
    end
    
    
      private
        
      def serialized_data
          {
              :include=> {
                  :errands=> {
                      :only=>[:errand_name,:location, :errand_order,:priority,:pay,:notes]
                  }
              },
              :except=>[:created_at, :updated_at]
          }
      end

end
