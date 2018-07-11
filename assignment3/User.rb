require_relative "shopkeeper"
require_relative "customer"
class User
  def user
    puts "enter choice 1.shopkeeper 2.customer"
  end
end

U=User.new
user_choice=gets.chomp
if user_choice == '1'
  then S.choice
elsif user_choice == '2'
  then C.choice
else
 puts "invalid choice"
end
