desc "Heroku scheduler add-on used to re-seed db periodically"
task :update_db => :environment do
  puts "Updating database. . ."
  Rake::Task['db:seed'].invoke
  puts "Update complete."
end