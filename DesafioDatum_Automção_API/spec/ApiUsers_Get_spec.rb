
describe "GETs API Users - GET List Users" do
   
    context "Quando eu executar List Users" do
        before do
            @result = HTTParty.get("https://reqres.in/api/users?page=2")
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "GETs API Users - GET Single Users" do
   
    context "Quando eu executar Single Users" do
        before do
            @result = HTTParty.get("https://reqres.in/api/users/2")
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "GETs API Users - GET Single User Not Found" do
   
    context "Quando eu executar Single User Not Found" do
        before do
            @result = HTTParty.get("https://reqres.in/api/users/23")
        end
        it { expect(@result.response.code).to eql "404" }     
    end
end

describe "GETs API Users - GET List <Resource>" do
   
    context "Quando eu executar List <Resource>" do
        before do
            @result = HTTParty.get("https://reqres.in/api/unknown")
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "GETs API Users - GET Single <Resource>" do
   
    context "Quando eu executar Single <Resource>" do
        before do
            @result = HTTParty.get("https://reqres.in/api/unknown/2")
        end
        it { expect(@result.response.code).to eql "200" }     
    end
end

describe "GETs API Users - GET Single <Resource> Not Found" do
   
    context "Quando eu executar Single <Resource> Not Found" do
        before do
            @result = HTTParty.get("https://reqres.in/api/unknown/23")
        end
        it { expect(@result.response.code).to eql "404" }     
    end
end