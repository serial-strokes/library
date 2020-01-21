require 'docker'
require 'serverspec'

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups

  config.before(:suite) do
    $lib_image = Docker::Image.build_from_dir('.') do |v|
      puts v
    end
    $lib_image.tag(repo: 'serial-strokes/library', tag: 'latest')
    $lib_container = Docker::Container.create(
      'Entrypoint' => ['sh'],
      'Cmd' => [],
      'Tty' => true,
      'Image' => $lib_image.id
    )
    $lib_container.start
  end

  config.after(:suite) do
    $lib_container.stop
    $lib_container.remove
  end

end
