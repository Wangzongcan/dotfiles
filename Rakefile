desc "install..."
task :install do
  Dir["*"].each do |file_name|
    next if "Rakefile" == file_name

    target_file_name = ".#{file_name}"

    puts "ln #{file_name}"
    system %Q{ln -fs "$PWD/#{file_name}" "$HOME/#{target_file_name}"}
    if File.exist?("#{ENV['HOME']}/#{target_file_name}")
      puts "success"
    else
      puts "something wrong"
    end
  end
end
