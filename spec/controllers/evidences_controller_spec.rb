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

describe EvidencesController do

  # This should return the minimal set of attributes required to create a valid
  # Evidence. As you add validations to Evidence, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all evidences as @evidences" do
      evidence = Evidence.create! valid_attributes
      get :index
      assigns(:evidences).should eq([evidence])
    end
  end

  describe "GET show" do
    it "assigns the requested evidence as @evidence" do
      evidence = Evidence.create! valid_attributes
      get :show, :id => evidence.id.to_s
      assigns(:evidence).should eq(evidence)
    end
  end

  describe "GET new" do
    it "assigns a new evidence as @evidence" do
      get :new
      assigns(:evidence).should be_a_new(Evidence)
    end
  end

  describe "GET edit" do
    it "assigns the requested evidence as @evidence" do
      evidence = Evidence.create! valid_attributes
      get :edit, :id => evidence.id.to_s
      assigns(:evidence).should eq(evidence)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Evidence" do
        expect {
          post :create, :evidence => valid_attributes
        }.to change(Evidence, :count).by(1)
      end

      it "assigns a newly created evidence as @evidence" do
        post :create, :evidence => valid_attributes
        assigns(:evidence).should be_a(Evidence)
        assigns(:evidence).should be_persisted
      end

      it "redirects to the created evidence" do
        post :create, :evidence => valid_attributes
        response.should redirect_to(Evidence.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved evidence as @evidence" do
        # Trigger the behavior that occurs when invalid params are submitted
        Evidence.any_instance.stub(:save).and_return(false)
        post :create, :evidence => {}
        assigns(:evidence).should be_a_new(Evidence)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Evidence.any_instance.stub(:save).and_return(false)
        post :create, :evidence => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested evidence" do
        evidence = Evidence.create! valid_attributes
        # Assuming there are no other evidences in the database, this
        # specifies that the Evidence created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Evidence.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => evidence.id, :evidence => {'these' => 'params'}
      end

      it "assigns the requested evidence as @evidence" do
        evidence = Evidence.create! valid_attributes
        put :update, :id => evidence.id, :evidence => valid_attributes
        assigns(:evidence).should eq(evidence)
      end

      it "redirects to the evidence" do
        evidence = Evidence.create! valid_attributes
        put :update, :id => evidence.id, :evidence => valid_attributes
        response.should redirect_to(evidence)
      end
    end

    describe "with invalid params" do
      it "assigns the evidence as @evidence" do
        evidence = Evidence.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Evidence.any_instance.stub(:save).and_return(false)
        put :update, :id => evidence.id.to_s, :evidence => {}
        assigns(:evidence).should eq(evidence)
      end

      it "re-renders the 'edit' template" do
        evidence = Evidence.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Evidence.any_instance.stub(:save).and_return(false)
        put :update, :id => evidence.id.to_s, :evidence => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested evidence" do
      evidence = Evidence.create! valid_attributes
      expect {
        delete :destroy, :id => evidence.id.to_s
      }.to change(Evidence, :count).by(-1)
    end

    it "redirects to the evidences list" do
      evidence = Evidence.create! valid_attributes
      delete :destroy, :id => evidence.id.to_s
      response.should redirect_to(evidences_url)
    end
  end

end