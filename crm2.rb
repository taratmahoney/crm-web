require_relative 'rolodex'
require_relative 'contact'
require 'sinatra'

$rolodex = Rolodex.new

#routes

get "/" do 
  @page_title = "The Contact Manager"
  erb :index  
end

get "/contacts" do
  @page_title = "Contacts"
  erb :contacts
end

get "/contacts/new" do
  @page_title = "Add a new contact"
  erb :contacts_new
end

post "/contacts" do
  new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
  $rolodex.add_contact(new_contact)
  redirect to('/contacts')
end