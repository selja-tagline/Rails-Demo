puts "asfsadfsadf"


p "juned"


def test
    p "new test"
end
puts test
puts  10 + 20

10.times do |a|
    puts a
end

a = [1,2,3,12,45,66,52]


a.each do |i|
    puts i
end

puts "sorted array reverse #{a.reverse}"  

puts "-------------------------------------"
p "selja bhalala"

p 10+  85

def myfunction
    p "here my text"
end
puts myfunction

class CheckData
    puts "sddsc fghrdv"

    def demo
        p 10 +125
    end
    def demo2
        demo
        puts "call demo2"
    end
end

chk = CheckData.new
chk.demo2

puts "--------------------- Global Variable ------------------------"
$name = "selja patel"
class Testglobal
    def  first
        puts "Employee name is #$name"
    end
    def second
        puts "Second employee name is also #$name"
    end
end

getEmp1 = Testglobal.new
getEmp1.first
getEmp2 = Testglobal.new
getEmp2.second

class Employee
    def initialize(id, name, email, department)
        @emp_id = id
        @emp_name = name
        @emp_email = email
        @emp_department = department
    end

    def Showemp
        p "Id is #@emp_id"
        p "Name is #@emp_name"
        p "Email is #@emp_email"
        p "Department is #@emp_department"
    end


end

emp1 = Employee.new("1", "Selja", "selja@gmail.com", "RoR")
emp1.Showemp
emp2 = Employee.new("2", "Dharmi", "dharmi@gmail.com", "Design")
emp2.Showemp

class Student
    @@number_of_student = 0
    def initialize(id, name, email)
        @stud_id = id
        @stud_name = name
        @stud_email = email
    end
    def GetInfo()
        p "Id is #@stud_id"
        p "Name is #@stud_name"
        p "Email is #@stud_email"
    end
    def Total_student()
        @@number_of_student += 1
        p "Total students are : #@@number_of_student" 
    end
end

stud1 = Student.new("1", "aaa", "aaa@gmail.com")
stud1.Total_student()
stud2 = Student.new("2", "bbb", "bbb@gmail.com")
stud2.Total_student()


subjects = [1,45,6,10,55,2,20]
subjects.each do |i|
    puts i
end

puts "reverse subject Number : #{subjects.reverse}"
puts "Sorted subject Number : #{subjects.sort}"

(8..12).each do |i|
    puts i
end
city = "surat"
defined? city


x = 1
y = "1"
if x==y
    puts "yes"
else
    puts "no" 
end

$sum = 15
case $sum
when 2+8
    puts "correct here"
when 1+4
    puts "not correct"
else 
    puts "default"
end


$k = 0;
$val = 10;
begin
    puts "value is : #$k"
    $k += 1
end until $k > 4


for i in 0..5
    if i<2 then
        next
    end 
    p "v : #{i}"
end

(0...6).each do |i|
    p i
end

def office (*things)
    puts "Total number of Items : #{things.length}"
    for i in 0...things.length
        puts "Item is : #{things[i]}"
    end
end

office "hd", "pen", "paper", "desk", "keyboard"
office "employee", "ceo", "HR"
#-----------------Block-----------------
def event
    puts "You are at the first step"
    yield "selja", "bhalala"
    p "You are at the second step"
    yield "dharmi", "vyas"
end
event {|a, b| p "Person name is #{a} #{b}"}

text1 = "scxsdhhgd"
text2 = "This is my desk"
puts text1.dump

states = ["gujarat","maharastra","tamilnadu","UP"]
puts "#{states}"

age = Array(0..5)
puts "#{age}" 
weight = [45,41,20,88,50]
puts age.concat(weight)
age.delete_at(6)
puts "#{age}"
#age.clear
#p age.empty?
age2 = Array(0..5)
p age.eql?(weight)
p Time.new


a = [5,4,3,2,1]
b = a.collect
puts b

#-----------Ranges-------------

marks = 85

res = case marks
    when 10..30 then "Fail*"
    when 30..60 then "Just pass"
    when 60..70 then "Pass with Second Class"
    when 70..80 then "Pass with First Class"
    when 80..100 then "Pass with Distinction"
end
p res


aFile = File.new("test.txt", "r+")
if aFile
   aFile.syswrite("ABCDEF")
else
   puts "Unable to open file!"
end

range = ("baa".."bat")
p range.to_a

