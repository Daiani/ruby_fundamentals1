#load 'contrat.rb'
require './contact'
require  './rolodex'

class CRM

	def self.run
		my_crm = CRM.new
		my_crm.main_menu

	end

	def initialize
		@rolodex = Rolodex.new
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))
		@rolodex.add_contact(Contact.new("Namey", "McNamerson", "namey@email.realdomain", "Super awesome"))

	end
	
	def print_main_menu
		puts "[1] Add new contact"
		puts "[2] Modify and existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Display an attribute"
		puts "[6] Exit"
		puts "Enter a selection"
	end


	def call_selection(selection)
		add_new_contact if selection == 1
		modify_contact if selection == 2
		delete_contact if selection == 3
		display_contact if selection == 4
		display_by_attribute if selection == 5
		exit if selection == 6

	end

	def main_menu
		while true 
			print_main_menu
			selection = gets.chomp.to_i
			call_selection(selection)
	  end
	end

	def add_new_contact
		print "First name:"
		first_name = gets.chomp
		print "Last name:"
		last_name = gets.chomp
		print "Email:"
		email = gets.chomp
		print "Notes:"
		note = gets.chomp
		contact = Contact.new(first_name, last_name, email, note)
		@rolodex.add_contact(contact)
	end

	def display_contact
		print "Enter id of user would like to view:"
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact_id)
	    puts(contact)
	 end

	def modify_contact
		print "Id that you would like to modify:"
		contact_id = gets.chomp.to_i
		contact = @rolodex.find(contact_id)
		puts contact
		print "What attribute do you like to modify? (F)irst name, (L)ast name, (E)mail, (N)ote"
		attribute = gets.chomp.downcase
	

		if 
			attribute == "f"
		puts "Enter the new first name"
		new_name=gets.chomp.to_s
		contact.first_name=new_name

		elsif attribute == "l"
		puts "Enter the new last name"
		new_last=gets.chomp.to_s
		contact.last_name=new_last

    elsif attribute == "e"
    puts "New email"
    new_email=gets.chomp.to_s
    contact.email=new_email

elsif attribute == "n"
	  puts "Enter a new note"
    new_note=gets,chomp.to_s
    contact.note=new_note

	end

end


	def delete_contact
		print "Enter the id that you want to delete:"
		contact_id = gets.chomp.to_i
		@rolodex.delete_contact(contact_id)

	end


	 def exit
	 	abort
	 end

	def display_by_attribute
		print "What attribute would you like to view by: (F)irst name, (L)ast, (E)mail, (N)ote?"
		attribute = gets.chomp.downcase

		
 
 @rolodex.contacts.each do |contact|
 	      if attribute == "if"
 		    puts contact.first_name
 		   elsif attribute == "l"
 		   	puts contact.last_name
 		   elsif attribute == "e"
 		   	puts contact.email
 		   elsif attribute == "n"
 		   	puts contact.note

	     end

       end
  end

end



CRM.run
