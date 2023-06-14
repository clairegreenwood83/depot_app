module Counter

    private

      def set_counter
        @counter = Cart.find(session[:counter])
      if session[:counter].nil?
        @counter = Cart.create
        session[:counter] =
      end
    end 