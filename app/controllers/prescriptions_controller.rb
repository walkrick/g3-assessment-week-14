class PrescriptionsController < ApplicationController

  def new
    @prescription = Prescription.new
    @patient = Patient.find(params[:patient_id])
    @medications = Medication.all
  end

  def create
    # @patient = Patient.find(params[:patient_id])

    @prescription = Prescription.new(allowed_parameters)

    @prescription.patient_id = params[:patient_id]

    if @prescription.save
      flash[:notice] = "Your prescription has been created"
      redirect_to "/"
    else
      @patient = Patient.find(params[:patient_id])
      render :new
    end
  end
end


private

def allowed_parameters
  params.require(:prescription).permit(:medication_id, :patient_id, :dosage, :schedule, :start_date, :end_date)
end