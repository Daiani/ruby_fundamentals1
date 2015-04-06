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

	end
	

def print_main_menu
		puts "[1] Add new contact"
		puts "[2] Modify and existing contact"
		puts "[3] Delete a contact"
		puts "[4] Display all the contacts"
		puts "[5] Dispaly and attribute"
		puts "[6] Exit"
		puts "Enter a selection"

	end


def call_selection(selection)
	add_new_contact if selection == 1
	modify_contact if selection == 2
	delete_contact if selection == 3
	display_all if selection == 4
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
	    puts contact

    end


end



CRM.run
