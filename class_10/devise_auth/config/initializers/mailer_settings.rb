ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.mandrillapp.com',
    :user_name =>      "jordankphillips@gmail.com",
    :password =>       "xqcapJdu1O4YpuP0-hqD0A",
    :domain =>         'http://ujkka8fed66f.jordanp.koding.io:3000',
    :authentication => :plain
}