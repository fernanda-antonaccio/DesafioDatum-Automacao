
describe "API Users - POST Create" do
   
    context "Quando eu executar Create" do
        before do
            @result = HTTParty.post(
                "https://reqres.in/api/users",
                body: { name: "morpheus", job: "leader"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "201" }     
    end
end

describe "API Users - PUT Update" do
   
    context "Quando eu executar Update" do
        before do
            @result = HTTParty.put(
                "https://reqres.in/api/users/2",
                body: { name: "morpheus", job: "zion resident"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "API Users - PATCH Update" do
   
    context "Quando eu executar Update" do
        before do
            @result = HTTParty.patch(
                "https://reqres.in/api/users/2",
                body: { name: "morpheus", job: "zion resident"}.to_json,
                headers: {
                    "Content-Type" => "application/json"
                },
            )
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "API Users - DELETE Delete" do
   
    context "Quando eu executar Delete" do
        before do
            @result = HTTParty.delete("https://reqres.in/api/users/2")
        end
        it { expect(@result.response.code).to eql "204" }     
    end
end