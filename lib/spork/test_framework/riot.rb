class Spork::TestFramework::Riot < Spork::TestFramework
  DEFAULT_PORT = 8988
  HELPER_FILE = File.join(Dir.pwd, "test/teststrap.rb")

  def run_tests(argv, stderr, stdout)
    $LOAD_PATH << "test" << "."

    paths, opts = parse_options(argv)

    paths.each do |path|
      if File.directory?(path)
        Dir["#{path.chomp('/')}/**/*_test.rb"].each { |f| require f }
      else
        require path
      end
    end

    ::Riot.run.success?
  end

  def parse_options(argv)
    paths, opts = argv.slice_before("--").to_a
    paths ||= []
    opts ||= []
    opts.shift
    [paths, opts]
  end
end
