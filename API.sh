 read -p "Enter user id:" id
 curl -k -o file.txt "https://jsonplaceholder.typicode.com/users/$id"
 name=$( jq '.name' file.txt)
 email=$( jq '.email' file.txt)
 city=$( jq '.address.city' file.txt)
 company_name=$( jq '.company.name' file.txt)
 echo "User Name is :$name"
 echo "User mail is :$email"
 echo "User city is :$city"
 echo "User companyName is :$company_name"
