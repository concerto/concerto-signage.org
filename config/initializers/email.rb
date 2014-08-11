require 'csv'
#when using paas environments, emails list can be passed in as an ENV var
if ENV["EMAILS"]
  env_emails = ENV["EMAILS"].split(',')
end

#read local file with comma seperated emails
#using split instead of parse_csv because this will allow csv,newlines and spaces!
file_emails = File.read("./config/local_auth_emails").split(/[\s,']/)
if ENV["EMAILS"]
  emails = env_emails | file_emails #put the arrays together excluding duplicates
else
  emails = file_emails
end
Rails.logger.debug file_emails
Rails.logger.debug emails
ConcertoSignage::Application.config.authorized_emails = emails
