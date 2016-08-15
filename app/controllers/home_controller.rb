##
# Public class which renders the Dashboard
# in the application.

class HomeController < ApplicationController
  before_action :authenticate_user!

  respond_to :json, :html

  def index
    if request.format.json?
      @patients = PatientPresenter.new(Patient.all.order('last_name,first_name'), current_user).present
      render json: {patients: @patients}
    end
  end

end
