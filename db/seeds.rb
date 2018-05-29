Recipient.destroy_all
Bill.destroy_all

bill1 = Bill.create(name: "Pizza", price: 100,  bank_account:'434313213', description:"description")
bill2 = Bill.create(name: "Hamburger", price: 30,  bank_account:'434313213', description:"description")
bill3 = Bill.create(name: "Fish", price: 40,  bank_account:'434313213', description:"description")

bill1.recipients.create(name: "Jan", email: "jan@test.pl")
bill1.recipients.create(name: "Adam", email: "adam@test.pl")

bill2.recipients.create(name: "Kacper", email: "kacper@test.pl")
bill2.recipients.create(name: "Bartosz", email: "bartosz@test.pl")

bill3.recipients.create(name: "Konrad", email: "konrad@test.pl")
bill3.recipients.create(name: "Robert", email: "robert@test.pl")

puts 'Bills created'