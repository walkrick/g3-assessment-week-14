class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @patient = Patient.all

  end

  def create
    def create
      @prescription = Prescription.new(:id => params[:prescription][:id])

      if @prescription.save
        flash[:notice] = "Your prescription has been created"
        redirect_to "/"
      else
        render :new
      end
    end

  end



end

