require('rspec')
require('contact')
require('phone')
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
      expect(test_contact.contact_name()).to(eq("Jenny"))
    end
  end

  describe("#id") do
    it("gives an id for each contact") do
      test_contact = Contact.new("Jenny")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("saves contact entry into array") do
      test_contact = Contact.new("Jenny")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe(".clear") do
    it("clears out all the contacts from the array") do
      test_contact = Contact.new("Jenny").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end
end
