
def add_user
  admin = User.find_by_username('csc')
  if admin.blank?
    User.create({
        :username => 'csc',
        :password => 'csc',
        :first_name => 'Admin',
        :last_name => 'Account'
      })
    puts "Account Created"
    puts "Username : bazooka"
    puts "Password : bazooka"
  else
    puts "CSC account already exists"
  end
end

add_user
