require "bundler/gem_tasks"
require "rake/clean"
CLEAN.include('*.swp')
CLOBBER.include('pkg/*.gem')
task :test do
  sh "ruby -Ilib test/tc_tictactoe.rb"
end

desc "Run rspec for tictactoe"
task :spec do
sh "rspec -Ilib spec/spec_tictactoe.rb --format documentation"
end

desc "desistalar geme"
task :unistall do
sh "gem uninstall tictactoe"
end

desc "Hide gem tictactoe"
task :unpublish, :version do |t,args|
sh "gem yank tictactoe -v #{args[:version]}"
end

desc " Show all published versions of gem"
task :published do
sh "gem list tictactoe --remote --all"
end


