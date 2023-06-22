class ApplicationController < ActionController::Base
    before_action :authorize #authorize() method is invoked before every action in application

    protected

      def authorize
        unless User.find_by(id: session[:user_id])
            redirect_to login_url, notice: "Please log in"
        end
      end
end
