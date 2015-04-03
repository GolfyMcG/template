namespace :ci do
  desc 'build the codebase'
  task :build do
    build_components = {
      'Rspec (Unit Specs)' => 'rspec',
    }

    build_components.each do |description, command|
      puts "Running #{description}"
      puts '=' * 50
      system("bundle exec #{command}")

      fail "#{command} failed!" unless $CHILD_STATUS.exitstatus == 0
    end
  end
end
