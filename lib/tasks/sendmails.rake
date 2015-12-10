namespace :users do
  desc 'Send Emails to users with undone evaluations'
  task sendmails: :environment do
    # sql = "Select distinct email from Users where id in (select studentid from Surveys where isdone=0);"
    # record_array = ActiveRecord::Base.connection.execute(sql)
    
    @user = User.find_by_sql("Select * from Users where id in (select studentid from Surveys where isdone=0);")
    @user.each do |user|
      AdminMailer.more_surveys(user).deliver
    end
  end
end