class Contact

  @@contacts = []

  define_method (:initialize) do |contact_name|
    @contact_name = contact_name
    @phone_numbers = []
    @id = @@contacts.length().+1
  end

  define_method(:contact_name) do
    @contact_name
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:id) do
    @id
  end

  define_method(:save) do
    @@contacts.push(self)
  end
end
