require 'harvested'

subdomain = ENV['harvest_subdomain']
email = ENV['harvest_email']
password = ENV['harvest_password']

harvest = Harvest.hardy_client(subdomain, email, password)

# hard code project for now
project = harvest.time.trackable_projects.find { |x| x.name == 'Internal' }

# task is development
puts "creating and starting entry"
created_entry = harvest.time.create Harvest::TimeEntry.new(notes: 'test entry from api', project_id: project.id, task_id: 634112)
