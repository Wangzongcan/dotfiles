desc 'install...'
task :install do
  Dir['**/{*,.*}'].each do |name|
    next unless !File.directory?(name) && name =~ /.symlink$/

    realpath = File.realpath(name)
    linkpath = File.join(ENV['HOME'], File.basename(name).gsub('.symlink', ''))
    system %(ln -sv "#{realpath}" "#{linkpath}")
  end
end
