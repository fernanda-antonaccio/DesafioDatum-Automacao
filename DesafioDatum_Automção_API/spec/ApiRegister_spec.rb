
describe "Post - Register Successful" do
   
    context "Quando eu executar Register Successful" do
        before do
            @result = HTTParty.post(
                "https://reqres.in/api/register",
                body: { email: "eve.holt@reqres.in", password: "pistol"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "Post - Register Unsuccessful" do
   
    context "Quando eu executar Register Unsuccessful" do
        before do
            @result = HTTParty.post(
                "https://reqres.in/api/register",
                body: { email: "sydney@fife"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "400" }     
    end
end