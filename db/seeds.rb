table_nmaes = %w(staff_members)
table_nmaes.each do |table_name|
  path = Rails.root.join('db', 'seeds', Rails.env,"#{table_name}.rb")
  if File.exist?(path)
    puts "Creating #{table_name}...."
    require(path)
  end
end
