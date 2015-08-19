# This is my first comment

# I need to create a variable with my first name.
#first_name = 'Ellen'
# I need to create a variable with my last name.
# last_name = 'Stucki'
# I need to output my first and last name.
# puts - outputs variable or data structure with a new line
# print - outputs variable or data structure w/out a new line
# puts first_name
# puts last_name

# full_name = 'Ellen Stucki'
# puts first_name
# print last_name
# print full_name

# puts "#{first_name}" + " " + "#{last_name}"
# puts "#{first_name} #{last_name}"


# Take user input
# Set first_name to user input
# output users first name

# puts "Input your first name: "
# first_name = gets.chomp
# puts "Hello #{first_name}" 

#Contact List of first names
# Have an option to list all contacts
# Have an option to create a new contact
# have an option to delete a contact (google: remove from Ruby array)

# Bonus: have an option to sort contacts by first name
# Have an option to edit a contact 
# Store first name, last name and phone number

#array of first name strings
# first_names = ['Jake', 'John', 'Joe']
# << pushes stuff into the array
# first_names << 'Brit'

# puts first_names
# print first_names


contact_list = ['Bob', 'Sally', 'Nolan']
while true
	puts "Menu:" 
	puts "1. View contact list"
	puts "2. Add to your contact list."
	puts "3. Delete a contact"
	puts "4. Sort contacts alphabetically"
	puts "5. End the program"

	user_input = gets.strip
	case user_input 
		when '1' 
			puts contact_list
		when '2'
			puts 'Enter the first name of your contact.'
			new_contact = gets.strip
			contact_list << new_contact
		when '3'
		    puts 'Enter the name you would like to delete'
		    delete_name = gets.strip
		    contact_list = contact_list - [delete_name]
		when '4'
		    contact_list = contact_list.sort do |a,b| a.upcase <=> b.upcase end
		    puts contact_list    
		when '5'
		    break	
		else 
			puts 'i do not understand what you mean'
	end

end
