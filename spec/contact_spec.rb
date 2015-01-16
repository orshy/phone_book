require('rspec')
require('contact')
require('pry')

describe(Contact) do

  describe(".all") do
    it("is an empty array at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#contact_name") do
    it("returns the contact name") do
      test_contact = Contact.new("Jenny")
      exepct(test_contact.contact_name()).to(eq("Jenny"))
    end
  end
end
