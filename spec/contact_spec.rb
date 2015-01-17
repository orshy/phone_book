require('rspec')
require('contact')
require('pry')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe("#contact_name") do
    it("returns the contact name") do
      test_contact = Contact.new("Jenny")
      expect(test_contact.contact_name()).to(eq("Jenny"))
    end
  end

  describe("#id") do
    it("returns the id for each contact") do
      test_contact = Contact.new("Jenny")
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a contact") do
      test_contact = Contact.new("Jenny")
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe("#add_phone") do
    it("adds a new phone number to a contact") do
      test_contact = Contact.new("Jenny")
      test_phone = Phone.new("867-5309", "867-5308", "867-5307")
      test_contact.add_phone(test_phone)
      expect(test_contact.phone()).to(eq([test_vehicle]))
    end
  end

  describe(".all") do
    it("is an empty array at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".clear") do
    it("clears out all the contacts from the array") do
      Contact.new("Jenny").save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds the contact by id") do
      test_contact = Contact.new("Jenny")
      test_contact.save()
      test_contact2 = Contact.new("Benny")
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end
