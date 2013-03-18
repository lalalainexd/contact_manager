require 'spec_helper'

describe Person do
  let(:person) { Person.new(first_name: "John", last_name: "Doe")}

  it "should be valid" do
    expect(person).to be_valid
  end

  it "should not be valid without a first name" do
    person.first_name = nil
    expect(person).to_not be_valid
  end

  it "should not be valid without a last name" do
    person.last_name = nil
    expect(person).to_not be_valid
  end

end
