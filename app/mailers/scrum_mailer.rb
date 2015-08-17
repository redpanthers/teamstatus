class ScrumMailer < ApplicationMailer


  def day_end_mail(user)
    mail to: user.email,
         subject: "Daily Status",
         reply_to: User.super_user.email,
         body: 'test body'
  end
end
