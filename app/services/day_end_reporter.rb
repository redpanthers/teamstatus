class DayEndReporter
  def self.sent_mails
    User.employees.each do |e|
      ScrumMailer.day_end_mail(e).deliver
    end
  end
end
