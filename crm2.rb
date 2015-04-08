require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

get "/" do 
  @crm_app_name = "My CRM"
  erb :index  
end

get "/contacts" do
  @contacts = []
  @contacts << Contact.new("Tara", "Mahoney", "tara.mahoney@me.com", "Developer")
  @contacts << Contact.new("Taylor", "Scollon", "taylorscollon@gmail.com", "Designer")
  @contacts << Contact.new("Mollie", "Anderson", "mollieaanderson@gmail.com", "Marketing")
  
  erb :contacts
end

get "/contacts/new" do
  erb :new_contacts
end