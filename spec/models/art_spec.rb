require "rails_helper"

RSpec.describe Art, :type => :model do
  it "admin is a valid role" do
    @art = create(:art)
    expect(@art).to be_valid
  end

  it "is valid with small size" do
    @art1 = create(:art, size: "Small")
    expect(@art1).to be_valid
  end

  it "is valid with medium size" do
    @art1 = create(:art, size: "Medium")
    expect(@art1).to be_valid
  end

  it "is valid with small size" do
    @art1 = create(:art, size: "Large")
    expect(@art1).to be_valid
  end
end
