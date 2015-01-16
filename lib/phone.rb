class Phone
  attr_reader(:home_phone, :work_phone, :cell_phone)
  @@digits = []

  define_method(:initialize) do |home_phone, work_phone, cell_phone|
    @home_phone = home
    @work_phone = work
    @cell_phone = cell
    @id = @@digits.length().+(1)
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
end
