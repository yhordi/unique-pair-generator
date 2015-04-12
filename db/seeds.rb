require 'faker'

i = 1
p = 10
10.times do
  Student.create(name: Faker::Name.name, pair_id: p)
  Pair.create(student_id: i, partner_id: p)
  p -= 1
  i += 1
end