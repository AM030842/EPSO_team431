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

RSpec.describe "/alums", type: :request do
  
  # Alum. As you add validations to Alum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Alum.create! valid_attributes
      get alums_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      alum = Alum.create! valid_attributes
      get alum_url(alum)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_alum_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      alum = Alum.create! valid_attributes
      get edit_alum_url(alum)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Alum" do
        expect {
          post alums_url, params: { alum: valid_attributes }
        }.to change(Alum, :count).by(1)
      end

      it "redirects to the created alum" do
        post alums_url, params: { alum: valid_attributes }
        expect(response).to redirect_to(alum_url(Alum.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Alum" do
        expect {
          post alums_url, params: { alum: invalid_attributes }
        }.to change(Alum, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post alums_url, params: { alum: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested alum" do
        alum = Alum.create! valid_attributes
        patch alum_url(alum), params: { alum: new_attributes }
        alum.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the alum" do
        alum = Alum.create! valid_attributes
        patch alum_url(alum), params: { alum: new_attributes }
        alum.reload
        expect(response).to redirect_to(alum_url(alum))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        alum = Alum.create! valid_attributes
        patch alum_url(alum), params: { alum: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested alum" do
      alum = Alum.create! valid_attributes
      expect {
        delete alum_url(alum)
      }.to change(Alum, :count).by(-1)
    end

    it "redirects to the alums list" do
      alum = Alum.create! valid_attributes
      delete alum_url(alum)
      expect(response).to redirect_to(alums_url)
    end
  end
end
