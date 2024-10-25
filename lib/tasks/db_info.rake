namespace :db do
  desc "Print database connection info"
  task connection_info: :environment do
    config = ActiveRecord::Base.connection_db_config
    puts "Current database configuration:"
    puts "Adapter: #{config.adapter}"
    puts "Database: #{config.database}"
    puts "Username: #{config.configuration_hash[:username]}"
    puts "Host: #{config.configuration_hash[:host]}"
    puts "Port: #{config.configuration_hash[:port]}"
  end
end