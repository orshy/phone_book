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

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |find_contact_name|
    found_contact_name = nil
    @@contacts.each() do |contact|
      if contact.id() == find_contact_name
        found_contact_name = contact
      end
    end
    found_contact_name
  end
end
