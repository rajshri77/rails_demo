require "rails_helper"

RSpec.describe ArtsController, :type => :controller do
  before(:all) do
  @art1 = create(:art, title:'Monalisa', description:'One of the best art in the world', size:'Large' )
  end

  it "is valid with valid attributes" do
    expect(@art1).to be_valid
  end

  it "checks all arts are fetched?" do
    @art1 = Art.all
    expect(Art.all.count).to eq(@art1.count)
  end

  it "checks that a art can be updated" do
    @art1.update(:title => "Monalisa v1")
    expect(Art.find_by_title("Monalisa v1")).to eq(@art1)
  end

  it "checks that a art can be destroyed" do
    @art1.destroy
    expect(Art.find_by(title: "Monalisa v1")).to be_nil
  end

end
