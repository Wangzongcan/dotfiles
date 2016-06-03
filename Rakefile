desc 'install...'
task :default do
  Dir['**/{*,.*}'].each do |name|
    next unless !File.directory?(name) && name =~ /.symlink$/

    realpath = File.realpath(name)
    linkpath = File.join(ENV['HOME'], File.basename(name).gsub('.symlink', ''))
    system %(ln -sv "#{realpath}" "#{linkpath}")
  end

  Dir['bin/*'].each do |name|
    realpath = File.realpath(name)
    linkpath = File.join('/usr/local/bin',
                         File.basename(name).gsub('.symlink', ''))

    File.chmod(0755, realpath)

    system %(ln -sv "#{realpath}" "#{linkpath}")
  end
end
