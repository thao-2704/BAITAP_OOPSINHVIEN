class Human
    def initialize(name, gender, age, height, weight, phone, email, nation)
        @name = name.to_s
        @gender = gender.to_s
        @age = age.to_i
        @height = height.to_f
        @weight = weight.to_f
        @phone = phone.to_i
        @email = email.to_s
        @nation = nation.to_s
    end
    def display
        puts "Name: #{@name}"
        puts "Gender: #{@gender}"
        puts "Age: #{@age}"
        puts "Height: #{@height}"
        puts "Weight: #{@weight}"
        puts "Phone: #{@phone}"
        puts "Email: #{@email}"
        puts "Nation: #{@nation}"
    end
end
class Student < Human 
    attr_accessor :school, :classs, :studentId, :grade1, :grade2, :grade3

    def inputInfo(school, classs, studentId, grade1, grade2, grade3)
        @school = school
        @classs = classs
        @studentId = studentId.to_i
        @grade1 = grade1.to_f
        @grade2 = grade2.to_f
        @grade3 = grade3.to_f
    end

    def avgScore()
       (@grade1 + @grade2 + @grade3) / 3
    end

    def display
        super
        puts "School: #{@school}" 
        puts "Class: #{@classs}"
        puts "StudentId: #{@studentId}"
        puts "Grade: #{avgScore()}"
    end
end

#Tạo các đối tượng Student
sv1 = Student.new("Phan Thị Thanh Thảo","Nữ","21","150","45","123456789","thanhthao@email.com", "Kinh")
sv1.inputInfo("UTE","RUBY","191505310258","6","8","9.7")

sv2 = Student.new("Thanh Thảo","Nữ","21","168","46","123456789","thao@email.com", "Kinh")
sv2.inputInfo("UTE","RUBY","191505310258","10","8","9")

sv3 = Student.new("Thảo Thảo","Nữ","21","155","47","123456789","thaophan@email.com", "Kinh")
sv3.inputInfo("UTE","RUBY","191505310258","8.5","7","8")

#Gán các đối tượng Student vào 1 danh sách
studentList = []
studentList << sv1
studentList << sv2
studentList << sv3

puts "Danh sách sinh viên trước khi sắp xếp"
for i in (0..studentList.length) do
    puts"*************************************"
    studentList[i].display()
# studentList.each do |val|
#     puts "#{val.display}"
end

#Sắp xếp danh sách sinh viên giảm dần theo điểm trung bình
list = studentList.sort_by { |stu| -stu.avgScore() }
puts "****************************************************************************\n"
puts "Danh sách sinh viên sau khi sắp xếp"
for i in(0..list.length) do
    puts"*********************************"
    list[i].display()
# list.each do |val|
#     puts "#{val.display}"
end