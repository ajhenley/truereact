require 'smarter_csv'
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
  