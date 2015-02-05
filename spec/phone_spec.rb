require('rspec')
require('phone')

 describe(Phone) do
  before() do
    Phone.clear()
  end

  describe('#phone_number') do
   it('returns the phone number') do
     test_number = Phone.new({:phone_number => "8675309", :phone_type => ""})
     expect(test_number.phone_number()).to(eq("8675309"))
   end
 end

 describe('#phone_type') do
   it('will return the type of phone') do
     test_number = Phone.new({:phone_number => "8675309", :phone_type => "Home"})
     expect(test_number.phone_type()).to(eq("Home"))
   end
 end

  describe(".all") do
    it("is an empty array at first") do
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('.clear') do
    it('will empty all saved numbers') do
      Phone.new({:phone_number => "8675309", :phone_type => ""}).save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

  describe('.find') do
    it("will return phone_number by id") do
      test_number = Phone.new({:phone_number => "8675308", :phone_type => ""})
      test_number.save()
      test_number2 = Phone.new({:phone_number => "8675307", :phone_type => ""})
      test_number2.save()
      expect(Phone.find(test_number.id())).to(eq(test_number))
    end
  end

  describe("#save") do
    it("adds a contact number to the array of saved numbers") do
      test_phone = Phone.new({:phone_number => "8675309", :phone_type => ""})
      test_phone.save()
      expect(Phone.all()).to(eq([test_phone]))
    end
  end
end
