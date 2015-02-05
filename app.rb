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
