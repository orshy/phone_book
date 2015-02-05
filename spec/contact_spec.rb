require('rspec')
require('contact')
require('phone')
require('pry')

describe(Contact) do
  before() do
    Contact.clear()
  end

  describe('#contact_name') do
    it("returns the contact name") do
      test_contact = Contact.new({:contact_name => "Jenny"})
      expect(test_contact.contact_name()).to(eq("Jenny"))
    end
  end

  describe("#id") do
    it("returns the id for each contact") do
      test_contact = Contact.new({:contact_name => "Jenny"})
      expect(test_contact.id()).to(eq(1))
    end
  end

  describe("#save") do
    it("adds a contact") do
      test_contact = Contact.new({:contact_name => "Jenny"})
      test_contact.save()
      expect(Contact.all()).to(eq([test_contact]))
    end
  end

  describe("#add_phone") do
    it("adds a new phone number to a contact") do
      test_contact = Contact.new({:contact_name => "Jenny"})
      test_phone = Phone.new({:phone_number => "8675309", :phone_type => ""})
      test_contact.add_phone(test_phone)
      expect(test_contact.phone_number()).to(eq([test_phone]))
    end
  end

  describe(".all") do
    it("is an empty array at first") do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved contacts') do
      Contact.new({:contact_name => "Jenny Wall"})
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe(".find") do
    it("finds the contact by id") do
      test_contact = Contact.new({:contact_name => "Jenny"})
      test_contact.save()
      test_contact2 = Contact.new({:contact_name => "Benny"})
      test_contact2.save()
      expect(Contact.find(test_contact.id())).to(eq(test_contact))
    end
  end
end
