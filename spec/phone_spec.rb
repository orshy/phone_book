require('rspec')
require('phone')
require('pry')

 describe(Phone) do
  before() do
    Phone.clear()
  end

  describe(".all") do
    it("is empty at first") do
      expect(Phone.all()).to(eq([]))

  describe("#home_phone") do
    it("returns the contact's home phone") do
      test_phone = Phone.new("home_phone","work_phone","cell_phone")
      test_phone.save()
      expect(test_phone.home_phone()).to(eq("home_phone"))
    end
  end

  describe("#work_phone") do
    it("returns the contact's work phone") do
      test_phone = Phone.new("home_phone","work_phone","cell_phone")
      test_phone.save()
      expect(test_phone.work_phone()).to(eq("work_phone"))
    end
  end

  describe("#cell_phone") do
    it("returns the contact's cell phone")
      test_phone = Phone.new("home_phone", "work_phone", "cell_phone")
      test_phone.save()
      expect(test_phone.cell_phone()).to(eq("cell_phone"))
    end
  end

  describe("#save") do
    it("adds a contact number to the array of saved numbers") do
      test_phone = Phone.new("home_phone","work_phone","cell_phone")
      test_phone.save()
      expect(Phone.all()).to (eq([test_phone]))
    end
  end
end
