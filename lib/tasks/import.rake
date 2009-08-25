require 'fastercsv'

namespace :import do

  task :items => :environment do
    
    file = ENV['FILE']
    raise "FILE is required" unless file
    
    FasterCSV.foreach(file, { :headers => true }) do |row|
      
      amount = row["Amount"].gsub('$', '').to_f      
      Item.create(:name => row["Description"], :amount => amount, :posted_at => Date.parse(row["Posted Date"]))

    end
    
  end

end