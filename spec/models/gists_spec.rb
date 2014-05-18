require "spec_helper"

describe Gist do
  it "create test tag" do
    a = Gist.create!(snippet: "test", description: "test", user_id: '1', lang: 'java', status: 'public')
    b = Gist.create!(snippet: "pierwszy", description: "jakis", user_id: '2', lang: 'c#', status: 'private')
    c = Gist.create!(snippet: "trzeci", description: "taki", user_id: '1', lang: 'c', status: 'public')
    d = Gist.create!(snippet: "czwarty", description: "test", user_id: '2', lang: 'scala', status: 'private')
  end
end