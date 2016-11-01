# Interior Designer Application Hash

application = {
  name: "Vladimir",
  address: "123 Dead End Lane, Chicago, IL 60657",
  email: "vlad@email.com",
  phone: "773-123-4567",
  shade_of_blue: "cyan"
}


# Driver Code

application[:shade_of_blue] = "navy" # updates value associated with key :shade_of_blue

application[:hired?] = true # adds a new key-value pair to hash

email_variable = :email # keys can be stored in variables...
p application[email_variable] # ...and their values can be accessed using that variable

p application[:name] + application[:address] # just like string addition, this returns the value associated with :name smashed together with the value associated with :address


p application # prints application hash to console