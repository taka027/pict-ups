class FormMailer < ActionMailer::Base
  default from: "unbreakablechain@gmail.com"   # 送信元アドレス
  default to: "unbreakablechain@gmail.com"     # 送信先アドレス
 
  def received_email(form)
    @form = form
    mail(:subject => 'お問い合わせを承りました')
  end
 
end