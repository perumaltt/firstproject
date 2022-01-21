class UsersController <ApplicationController


    def front
    end

    

    
    def create
      
       @form= User.create(user_params)
       redirect_to :create_path, notice: "Book not found"
      
    end
    def update
    end

    def show

       
    end
    def delete

        @out=User.all
    end

    

    private

    def user_params

        params.require(:user).permit(:name, :phone,:email,:address)
    end
    
end
