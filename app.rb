require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/phone')
require('./lib/contact')


get('/') do
  @contacts = Contact.all()
  erb(:index)
end

post('/contacts') do
  @contact_name = params.fetch('contact')
  Contact.new({:contact_name => @contact_name}).save()
  @contacts = Contact.all()
  erb(:index)
end

get('/contacts/:id') do
  @contacts = Contact.find(params.fetch('id').to_i())
  @numbers = Phone.all()
  erb(:contacts)
end

post('/phone_numbers') do
  @phone_number = params.fetch('phone_number')
  @phone_type = params.fetch('phone_type')
  Phone.new({:phone_number => @phone_number, :phone_type => @phone_type}).save()
  @phone_number_new = Phone.new({:phone_number => @phone_number, :phone_type => @phone_type})
  @contacts = Contact.find(params.fetch('contact_id').to_i())
  @contacts.add_phone(@phone_number_new)
  @phone_numbers = Phone.all()
  erb(:contacts)
end
