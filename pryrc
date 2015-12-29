Pry.config.correct_indent = false if ENV["EMACS"]


load ENV["HOME"] + '/.pryrc_rails' if [ "bin/rails", "script/rails" ].include?($0)
