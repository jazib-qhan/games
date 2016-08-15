##
# Public class which renders the Dashboard
# in the application.

class HomeController < ApplicationController
  respond_to :json, :html

  def index
    if request.format.json?
      render json: {text: :ok}
    end
  end

end
