require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe ParticipantsController do

  # This should return the minimal set of attributes required to create a valid
  # Participant. As you add validations to Participant, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all participants as @participants" do
      participant = Participant.create! valid_attributes
      get :index
      assigns(:participants).should eq([participant])
    end
  end

  describe "GET show" do
    it "assigns the requested participant as @participant" do
      participant = Participant.create! valid_attributes
      get :show, :id => participant.id.to_s
      assigns(:participant).should eq(participant)
    end
  end

  describe "GET new" do
    it "assigns a new participant as @participant" do
      get :new
      assigns(:participant).should be_a_new(Participant)
    end
  end

  describe "GET edit" do
    it "assigns the requested participant as @participant" do
      participant = Participant.create! valid_attributes
      get :edit, :id => participant.id.to_s
      assigns(:participant).should eq(participant)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Participant" do
        expect {
          post :create, :participant => valid_attributes
        }.to change(Participant, :count).by(1)
      end

      it "assigns a newly created participant as @participant" do
        post :create, :participant => valid_attributes
        assigns(:participant).should be_a(Participant)
        assigns(:participant).should be_persisted
      end

      it "redirects to the created participant" do
        post :create, :participant => valid_attributes
        response.should redirect_to(Participant.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved participant as @participant" do
        # Trigger the behavior that occurs when invalid params are submitted
        Participant.any_instance.stub(:save).and_return(false)
        post :create, :participant => {}
        assigns(:participant).should be_a_new(Participant)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Participant.any_instance.stub(:save).and_return(false)
        post :create, :participant => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested participant" do
        participant = Participant.create! valid_attributes
        # Assuming there are no other participants in the database, this
        # specifies that the Participant created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Participant.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => participant.id, :participant => {'these' => 'params'}
      end

      it "assigns the requested participant as @participant" do
        participant = Participant.create! valid_attributes
        put :update, :id => participant.id, :participant => valid_attributes
        assigns(:participant).should eq(participant)
      end

      it "redirects to the participant" do
        participant = Participant.create! valid_attributes
        put :update, :id => participant.id, :participant => valid_attributes
        response.should redirect_to(participant)
      end
    end

    describe "with invalid params" do
      it "assigns the participant as @participant" do
        participant = Participant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Participant.any_instance.stub(:save).and_return(false)
        put :update, :id => participant.id.to_s, :participant => {}
        assigns(:participant).should eq(participant)
      end

      it "re-renders the 'edit' template" do
        participant = Participant.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Participant.any_instance.stub(:save).and_return(false)
        put :update, :id => participant.id.to_s, :participant => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested participant" do
      participant = Participant.create! valid_attributes
      expect {
        delete :destroy, :id => participant.id.to_s
      }.to change(Participant, :count).by(-1)
    end

    it "redirects to the participants list" do
      participant = Participant.create! valid_attributes
      delete :destroy, :id => participant.id.to_s
      response.should redirect_to(participants_url)
    end
  end

end
