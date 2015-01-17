class Phone

  @@digits = []

  define_method(:initialize) do |home_phone, work_phone, cell_phone|
    @home_phone = home
    @work_phone = work
    @cell_phone = cell
    @id = @@digits.length().+(1)
  end

  define_method(:home) do
    @home
  end

  define_method(:work) do
  end

  define_method(:cell) do
  end

  define_method(:id) do
    @id
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
    found_number = nil
    @@digits.each() do |phone|
      if phone.id().eql(name())
        found_phone = phone
      end
    end
    found_phone
  end
end
