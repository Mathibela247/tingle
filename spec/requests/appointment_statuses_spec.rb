require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/appointment_statuses", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # AppointmentStatus. As you add validations to AppointmentStatus, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      AppointmentStatus.create! valid_attributes
      get appointment_statuses_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      appointment_status = AppointmentStatus.create! valid_attributes
      get appointment_status_url(appointment_status)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_appointment_status_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      appointment_status = AppointmentStatus.create! valid_attributes
      get edit_appointment_status_url(appointment_status)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new AppointmentStatus" do
        expect {
          post appointment_statuses_url, params: { appointment_status: valid_attributes }
        }.to change(AppointmentStatus, :count).by(1)
      end

      it "redirects to the created appointment_status" do
        post appointment_statuses_url, params: { appointment_status: valid_attributes }
        expect(response).to redirect_to(appointment_status_url(AppointmentStatus.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new AppointmentStatus" do
        expect {
          post appointment_statuses_url, params: { appointment_status: invalid_attributes }
        }.to change(AppointmentStatus, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post appointment_statuses_url, params: { appointment_status: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested appointment_status" do
        appointment_status = AppointmentStatus.create! valid_attributes
        patch appointment_status_url(appointment_status), params: { appointment_status: new_attributes }
        appointment_status.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the appointment_status" do
        appointment_status = AppointmentStatus.create! valid_attributes
        patch appointment_status_url(appointment_status), params: { appointment_status: new_attributes }
        appointment_status.reload
        expect(response).to redirect_to(appointment_status_url(appointment_status))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        appointment_status = AppointmentStatus.create! valid_attributes
        patch appointment_status_url(appointment_status), params: { appointment_status: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested appointment_status" do
      appointment_status = AppointmentStatus.create! valid_attributes
      expect {
        delete appointment_status_url(appointment_status)
      }.to change(AppointmentStatus, :count).by(-1)
    end

    it "redirects to the appointment_statuses list" do
      appointment_status = AppointmentStatus.create! valid_attributes
      delete appointment_status_url(appointment_status)
      expect(response).to redirect_to(appointment_statuses_url)
    end
  end
end
