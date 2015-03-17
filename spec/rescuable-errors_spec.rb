require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "RescuableErrors", type: :request do
  context "fail Unauthenticated" do
    it "rescue with correct error" do
      get '/unauthenticated'
      expect(JSON.parse(response.body)).to eq(
        "error" => {
          "code" => 401,
          "class" => "UnauthenticatedError",
          "message" => "As suas informações de autenticação não estão corretas."
        }
      )
    end
  end

  context "fail Routing" do
    it "rescue with correct error" do
      get '/routing'
      expect(JSON.parse(response.body)).to eq(
        "error" => {
          "code" => 404,
          "class" => "RoutingError",
          "message" => "As suas informações de autenticação não estão corretas."
        }
      )
    end
  end

  context "fail Model validation" do
    it "rescue with correct error" do
      get '/model'
      expect(JSON.parse(response.body)).to eq(
        "error" => {
          "code" => 400,
          "class" => "ModelValidationError",
          "message"=>{
            "name"=>["can't be empty"]
          }
        }
      )
    end
  end
end
