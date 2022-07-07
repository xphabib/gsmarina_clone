namespace :clone_devices do

  task :create_entry => :environment do
    CloneDevicesJob.perform_now
  end

  task :update_entry => :environment do
    DevicesUpdateJob.perform_now
  end
end