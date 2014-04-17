require 'yaml'
ConcertoSignage::Application.config.authorized_emails = YAML.load_file("./config/email.yml")