# Email Validation
def is_valid_email?(email = "")
    # regex = "/^(?<Recipient Name>[\w.+-]+)(?<@ symbol>@)(?<Domain name>[\w-]+).(?<Top-level domain>[a-z]+)$/i"
    regex = /^([\w.+-]+)@([\w-]+).([a-z]{3})$/i;
    email =~regex
end
puts "\nEnter the email to validate: "
in_email = gets.chomp().to_s
puts is_valid_email?(in_email) ? "Email Is Valid" : "Email Is Invalid" ;


# Mobile Number Validation
def is_valid_phone_number?(number = "")
    regex = /^[\+]?([0-9][ -]?){6,15}$$/;
    number =~regex
end
puts "\nEnter the phone nummber to validate: "
in_mob_no = gets.chomp().to_s
puts is_valid_phone_number?(in_mob_no) ? "Mobile Number Is Valid" : "Mobile Number Is Invalid" ;

# File format Validation
def is_valid_file_format?(file_name = "")
    allowed_formats = ["txt", "pdf", "doc", "json", "html", "jpg", "jpeg", "png", "rb"]
    split_array = file_name.rpartition('.');
    extension = split_array[-1];
    # p split_array
    # p extension
    allowed_formats.include? extension
 end
puts "\nEnter the file name to validate: "
in_file_name = gets.chomp().to_s
puts is_valid_file_format?(in_file_name) ? "Filename Is Valid" : "Filename Is Invalid" ;