# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  users = User.create([{ email: 'adam@adam.com' }, { email: 'ryan@ryan.com' }])
  BankAccount.create(name: 'Adams Chase Checking Account', user_id: users.first)
