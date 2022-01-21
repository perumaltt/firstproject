class Api::V1::CheckingController <ApplicationController
    skip_before_action :verify_authenticity_token

    def create

        details = User.new(user_params)

        if details.save

            render json:{message:"created successfully"}
        else

            render json:{message:"not created"}
        end
    end
    
    def user_details

       list= User.where("users.id" =>43)
        render json:{data: list}
    end

    def update_user

        updated=User.find(params[:id])

        up = updated.update(user_params)

        render json: {message:"updated successfully"}
    end

    def sign

        sign=Login.new(sign_params)

        if sign.save

            render json:{message:"sign-in successfully"}

        else

            render json:{message:"couldn't sigin-in"}
        end
    end

    def login

        login=Sign.new(login_params)

        test=Sign.joins(:login).where(login.name => sign.name)

        render json:{data:test}


    end

    def nick_name

        nickname=Up.new(nickname_params)

        if nickname.save

            render json:{message:"created successfully"}
        else

            render json:{message:"not created"}
        end
    end

    def create_book

        books = Book.new(books_params)

        if books.save

            render json:{message:"books created successfully"}
        else

            render json:{message:"couldn't create the book"}
        end
    end

    def create_car


        car=Car.new(car_params)

        if car.save

            render json:{message:"car booking is successfully"}
        else

            render json:{ message:"couldn't book the car"}

        end
    end

    def car_details

        cars=Car.joins(:user).where("users.id"=>43)

        render json:{data: cars}


       
    end

   









        

    private

    def user_params

        params.permit(:name,:phone,:email,:address)
    end

    def sign_params

        params.permit(:name,:password)
    end

    def login_params

        params.permit(:name,:password)
    end

    def nickname_params

        params.permit(:nickname,:user_id)
    end

    def books_params

        params.permit(:title,:author)
    end

    def car_params

        params.permit(:car_name,:amount,:user_id)
    end


    


end
