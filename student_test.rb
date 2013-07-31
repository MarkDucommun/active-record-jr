require_relative 'app'
# require 'test/unit'

# # class StuffTest < Test::Unit::TestCase

# # 1  4  Harvey Abshire gayle@yost.com  m 1986-08-07  
# # 2013-07-31T11:00:52-05:00  2013-07-31T11:00:52-05:00

#   def test_self_all
#     students = Student.all
#     assert_equal Student, students.first.class
#   end

#     # test self.create
#   def test_self_create
#     hash_args = {cohort_id:'1', first_name:'Colleen', last_name:'Sain', email:'dave@yost.biz',
#                  gender:'f', birthdate:'1986-08-07'}
   
#     colleen_student = Student.create(hash_args)

#     puts Student.where('last_name LIKE ?', "'Sain'").first
    
#     # Database::Model.execute("DELETE FROM students WHERE email LIKE 'dave@yost.biz';")
#   end

#   def test_self_find
#     cohort = Cohort.find(1)
#     cohort[:name] = 'Best Cohort Ever'
#     cohort.save

#     assert Cohort.find(1)[:name] == 'Best Cohort Ever'   
#   end

#   def test
    
#   end
# end


students = Student.all
puts students != []

Student.create({first_name:'Colleen'})

puts students != Student.all

puts Student.where('id = ?', '1') != []

puts Student.find(1) != nil

puts Student.new({first_name:'Bob'}).new_record? == true

cohort = Cohort.new({name:'Dragonflies'})

Student.find(1).cohort = cohort
puts Student.find(1).cohort == nil

puts Student.find(1)[:id] == 1

test = Student.find(1)
test[:first_name]='10000'
test.save

puts Student.find(1)[:first_name] == '10000' 

Student.find(1)[:first_name] = 'not 10000'

cohorts = Cohort.all
puts cohorts != []

Cohort.create({name:'Colleen'})

puts cohorts != Cohort.all

puts Cohort.where('id = ?', '1') != []

puts Cohort.find(1) != nil

puts Cohort.new({name:'Bob'}).new_record? == true

puts Cohort.find(1)[:id] == 1

test = Cohort.find(1)
test[:name]='another_cohort'
test.save

puts Cohort.find(1)[:name] == 'another_cohort'

test = Student.find(1)

cohort_test = Cohort.find(1)
cohort_test.add_students([test])
cohort_test.save

puts Cohort.find(1) != cohorts

puts cohort_test.students != []
