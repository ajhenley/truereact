require 'smarter_csv'

=begin
file = Rails.root + "app/assets/data6.csv"
i = 2
CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
  crn = row["CRN"]
  subj = row["SUBJ"]
  crsenum = row["CRSENUMB"]
  
  Survey.where(:crn => crn).update_all(crsenum: crsenum)
end

file = Rails.root + "app/assets/data7.csv"
CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
  theid = row["INSTRUCTOR_ID"]
  email = row["emails"]
  User.where(:instid => theid).update_all(:email => email)
end


u = User.new
u.id = 1
u.email = "ajhenley@gmail.com"
u.password = "lincoln1"
u.password_confirmation = "lincoln1"
u.sign_in_count=0
u.role="admin"
u.lname="Henley"
u.fname="Alton"
u.instid="@01048775"
u.save

u = User.new
u.id = 2
u.email = "ajhenley@outlook.com"
u.password = "lincoln1"
u.password_confirmation = "lincoln1"
u.sign_in_count=0
u.role="student"
u.lname="Henley"
u.fname="Alton"
u.instid="@01048775"
u.save

t = Template.new
t.ownerid = 1
t.schoolname = "Howard University School of Business"
t.q1="Effectiveness of course materials used"
t.qtype1="5to1"
t.q2="Degree of learning in course"
t.qtype2="5to1"
t.q3="Fairness of grading system of course as measure of student performance"
t.qtype3="5to1"
t.q4="Appropriateness of difficulty of course for its level"
t.qtype4="5to1"
t.q5="Overall evaluation of course"
t.qtype5="5to1"
t.q6="Instructor's ability to communicate with students"
t.qtype6="5to1"
t.q7="Instructor's interest in student learning"
t.qtype7="5to1"
t.q8="Effectiveness of instructor's teaching methods"
t.qtype8="5to1"
t.q9="Instructor's organization of course"
t.qtype9="5to1"
t.q10="Overall performance of instructor as an educator"
t.qtype10="5to1"
t.q11="Please provide any additional comments to explain your numerical ratings, encourage the instructor, or enhance the learning experience for subsequent students"
t.qtype11="freetext"
t.q12="Please provide your overall evaluation of the instructor, the course, and your learning experience"
t.qtype12="freetext"
t.q13="To call attention to required changes, please list any features that you particularly disliked about this course/instructor"
t.qtype13="freetext"
t.q14="To encourage continuation of what you found praiseworthy, please list any features that you particularly liked about this course/instructor"
t.qtype14="freetext"
t.q15=""
t.qtype15=""
t.isActive = 1
t.save

s = Survey.new
s.instid = "@01048775"
s.studentid = 2
s.subj = "INFO"
s.crsenum = "201"
s.sect = "03"
s.crn = "7779311"
s.coursetitle = "Quantitative Business Analysis"
s.credits = 3
s.instrfirst = "Ermer"
s.instrlast = "Charles"
s.instrid = "@5551212"
s.q1="5to1~Effectiveness of course materials used"
s.q2="5to1~Degree of learning in course"
s.q3="5to1~Fairness of grading system of course as measure of student performance"
s.q4="5to1~Appropriateness of difficulty of course for its level"
s.q5="5to1~Overall evaluation of course"
s.q6="5to1~Instructor's ability to communicate with students"
s.q7="5to1~Instructor's interest in student learning"
s.q8="5to1~Effectiveness of instructor's teaching methods"
s.q9="5to1~Instructor's organization of course"
s.q10="5to1~Overall performance of instructor as an educator"
s.q11="freetext~Please provide any additional comments to explain your numerical ratings, encourage the instructor, or enhance the learning experience for subsequent students"
s.q12="freetext~Please provide your overall evaluation of the instructor, the course, and your learning experience"
s.q13="freetext~To call attention to required changes, please list any features that you particularly disliked about this course/instructor"
s.q14="freetext~To encourage continuation of what you found praiseworthy, please list any features that you particularly liked about this course/instructor"
s.ownerid = 2
s.isdone = 0
s.save
=end

require 'smarter_csv'
file = Rails.root + "app/assets/spring2.csv"
i = User.maximum("id")

CSV.foreach(file, :headers => true, :encoding => 'windows-1251:utf-8') do |row|
  instrinstid = row["INST_ID"]
  name = row["INST_NAME"].split(", ")
  instrlast = name[0]
  instrfirst = name[1]
  if User.where(:instid => instrinstid).blank?
    i = i + 1
    u = User.new
    u.email = instrlast + "@howard.edu"
    u.id = i
    u.password = instrinstid
    u.password_confirmation = instrinstid
    u.sign_in_count=0
    u.role="faculty"
    u.lname=instrlast
    u.fname=instrfirst
    u.instid=instrinstid
    u.save!
    instrid = u.id
  else
    u = User.find_by instid: instrinstid
    instrid = u.id
  end

  stuid = row["ID"]
  lname = row["LAST_NAME"]
  fname = row["FIRST_NAME"]
  email = row["EMAIL_HOME"]
  email2 = row["EMAIL_HOWD"]

  if email.blank?
    email = email2
  end

  if User.where(:instid => stuid).blank?
    i = i + 1
    u = User.new
    u.email = email
    u.id = i
    u.password = stuid
    u.password_confirmation = stuid
    u.sign_in_count=0
    u.role="student"
    u.lname=lname
    u.fname=fname
    u.instid=stuid
    u.save!
    studid = u.id
  else
    u = User.find_by instid: stuid
    studid = u.id
  end

  crn = row["CRN"]
  subj = row["SUBJ"]
  crsenum = row["CRSE"]
  sect= row["SECT"]
  credits = row["HRS"]
  title = row["COURSE_TITLE"]

  s = Survey.new
  s.instrid = instrid
  s.studentid = studid
  s.subj = subj
  s.crsenum = crsenum
  s.sect = sect
  s.crn = crn
  s.coursetitle = title
  s.credits = credits
  s.instrfirst = instrfirst
  s.instrlast = instrlast
  s.q1="5to1~Effectiveness of course materials used"
  s.q2="5to1~Degree of learning in course"
  s.q3="5to1~Fairness of grading system of course as measure of student performance"
  s.q4="5to1~Appropriateness of difficulty of course for its level"
  s.q5="5to1~Overall evaluation of course"
  s.q6="5to1~Instructor's ability to communicate with students"
  s.q7="5to1~Instructor's interest in student learning"
  s.q8="5to1~Effectiveness of instructor's teaching methods"
  s.q9="5to1~Instructor's organization of course"
  s.q10="5to1~Overall performance of instructor as an educator"
  s.q11="freetext~Please provide any additional comments to explain your numerical ratings, encourage the instructor, or enhance the learning experience for subsequent students"
  s.q12="freetext~Please provide your overall evaluation of the instructor, the course, and your learning experience"
  s.q13="freetext~To call attention to required changes, please list any features that you particularly disliked about this course/instructor"
  s.q14="freetext~To encourage continuation of what you found praiseworthy, please list any features that you particularly liked about this course/instructor"
  s.ownerid = studid
  s.isdone = 0
  s.save

end