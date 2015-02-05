class Phone

  attr_reader(:phone_number, :phone_type, :id)
  @@digits = []

  define_method(:initialize) do |attributes|
    @phone_number = attributes.fetch(:phone_number)
    @phone_type = attributes.fetch(:phone_type)
    @id = @@digits.length().+(1)
  end

  define_singleton_method(:all) do
    @@digits
  end

  define_method(:save) do
    @@digits.push(self)
  end

  define_singleton_method(:clear) do
    @@digits = []
  end

  define_singleton_method(:find) do |name|
    @@digits.each() do |phone|
      if phone.id().eql?(name)
        return phone
      end
    end
  end
end
