class Rolodex
  attr_reader :contacts 

  def initialize
    @contacts = []
    @id = 1
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def find(contact_id)
    @contacts.find { |contact| contact.id == contact_id} #should return the first element that matches the condition in the block
  end

  def remove_contact(contact)
    @contacts.delete(contact)
  end
end
