class UserMailer < ActionMailer::Base
  default from: "sales@eworldtours.com"

  def welcome_email(user)
    @user = user
    @url = 'http://eworldtours.com'
    mail(:to => user.email, :subject => 'Welcome to e World Travel & Tours')
  end

  def test_email(employee_info)
    @employee_info = employee_info
    @url = 'http://eworldtours.com/ewtt'
    mail(:to => employee_info.default_email, :subject => 'Test email') if employee_info.default_email
  end
end
