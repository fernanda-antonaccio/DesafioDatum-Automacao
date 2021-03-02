
describe "Post - Login Successful" do
   
    context "Quando eu executar Login Successful" do
        before do 
            @result = HTTParty.post(
                "https://reqres.in/api/login",
                body: { email: "eve.holt@reqres.in", password: "cityslicka"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
            },
        )
        end
        it { expect(@result.response.code).to eql "200" }
    end
end

describe "Post - Login Successful" do
   
    context "Quando eu executar Login Successful" do
        before do
            @result = HTTParty.post(
                "https://reqres.in/api/login",
                body: { email: "peter@klaven"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "400" }     
    end
end