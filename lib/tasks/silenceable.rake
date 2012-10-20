namespace :silenceable do
  desc "Silence silanceable code blocks"
  task :enable => :environment do
    FileUtils.touch(Rails.root + ".silenced")
  end

  desc "Un-silence silenceable code blocks"
  task :disable => :environment do
    FileUtils.rm(Rails.root + ".silenced")
  end
end
