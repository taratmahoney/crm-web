require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

$rolodex = Rolodex.new

#routes

get "/" do 
  @crm_app_name = "My CRM"
  erb :index  
end

get "/contacts" do
  @contacts << Contact.new("Tara", "Mahoney", "tara.mahoney@me.com", "Developer")
  @contacts << Contact.new("Taylor", "Scollon", "taylorscollon@gmail.com", "Designer")
  @contacts << Contact.new("Mollie", "Anderson", "mollieaanderson@gmail.com", "Marketing")
  
  erb :contacts
end

get "/contacts/new" do
  erb :contacts_new
end