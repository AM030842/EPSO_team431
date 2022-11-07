require "rails_helper"

RSpec.describe AlumsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/alums").to route_to("alums#index")
    end

    it "routes to #new" do
      expect(get: "/alums/new").to route_to("alums#new")
    end

    it "routes to #show" do
      expect(get: "/alums/1").to route_to("alums#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/alums/1/edit").to route_to("alums#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/alums").to route_to("alums#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/alums/1").to route_to("alums#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/alums/1").to route_to("alums#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/alums/1").to route_to("alums#destroy", id: "1")
    end
  end
end
