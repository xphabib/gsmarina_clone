namespace :clone_brand do

  task :create_entry => :environment do
    BrandsCloneJob.perform_now
  end
end