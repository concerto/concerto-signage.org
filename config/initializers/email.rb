require 'yaml'
#when using paas environments, emails list can be passed in as an ENV var
if ENV["EMAILS"]
  env_emails = ENV["EMAILS"].split(',')
end

#read local file with comma seperated emails
file_emails = File.read("./config/local_auth_emails").split(",")
emails = env_emails | file_emails #put the arrays together excluding duplicates
ConcertoSignage::Application.config.authorized_emails = emails.to_yaml