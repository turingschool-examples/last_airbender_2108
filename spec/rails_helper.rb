# This file is copied to spec/ when you run 'rails generate rspec=>install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Requires supporting ruby files with custom matchers and macros, etc, in
# spec/support/ and its subdirectories. Files matching `spec/**/*_spec.rb` are
# run as spec files by default. This means that files in spec/support that end
# in _spec.rb will both be required and run as specs, causing the specs to be
# run twice. It is recommended that you do not name files matching this glob to
# end with _spec.rb. You can configure this pattern with the --pattern
# option on the command line or in ~/.rspec, .rspec or `.rspec-local`.
#
# The following line is provided for convenience purposes. It has the downside
# of increasing the boot-up time by auto-requiring all files in the support
# directory. Alternatively, in the individual `*_spec.rb` files, manually
# require only the support files necessary.
#
# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].sort.each { |f| require f }

# Checks for pending migrations and applies them before tests are run.
# If you are not using ActiveRecord, you can remove these lines.
begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  # Remove this line if you're not using ActiveRecord or ActiveRecord fixtures
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.include Rails.application.routes.url_helpers
  config.include Capybara::DSL

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, remove the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true

  # You can uncomment this line to turn off ActiveRecord support entirely.
  # config.use_active_record = false

  # RSpec Rails can automatically mix in different behaviours to your tests
  # based on their file location, for example enabling you to call `get` and
  # `post` in specs under `spec/controllers`.
  #
  # You can disable this behaviour by removing the line below, and instead
  # explicitly tag your specs with their type, e.g.=>
  #
  #     RSpec.describe UsersController, type=> =>controller do
  #       # ...
  #     end
  #
  # The different available types are documented in the features, such as in
  # https://relishapp.com/rspec/rspec-rails/docs
  config.infer_spec_type_from_file_location!

  # Filter lines from Rails gems in backtraces.
  config.filter_rails_from_backtrace!
  # arbitrary gems may also be filtered via=>
  # config.filter_gems_from_backtrace("gem name")
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

def fire_nation_data
[
    {
        "_id"=> "5cf5679a915ecad153ab68fd",
        "allies"=> [
            "Ozai"
        ],
        "enemies"=> [
            "Earth Kingdom"
        ],
        "name"=> "Chan (Fire Nation admiral)",
        "affiliation"=> "Fire Nation Navy"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6906",
        "allies"=> [
            "Ty Lee"
        ],
        "enemies"=> [
            "Appa"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
        "name"=> "Circus master",
        "affiliation"=> "Fire Nation circus"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68ee",
        "allies"=> [
            "Ozai"
        ],
        "enemies"=> [
            "Zuko"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/7/76/Bujing.png/revision/latest?cb=20130714152817",
        "name"=> "Bujing",
        "affiliation"=> "Fire Nation military"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68cc",
        "allies"=> [
            "Fire Nation"
        ],
        "enemies"=> [
            "Aang"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        "name"=> "Afiko",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68fc",
        "allies"=> [
            "Admiral Chan"
        ],
        "enemies"=> [
            "Azula",
            ""
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/9/9d/Chan.png/revision/latest?cb=20140908141053",
        "name"=> "Chan",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6907",
        "allies"=> [
            "Circus master"
        ],
        "enemies"=> [
            "Appa"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/b/bd/Circus_trainer.png/revision/latest?cb=20130705125545",
        "name"=> "Circus trainer",
        "affiliation"=> "Fire Nation circus"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68da",
        "allies"=> [
            "Ozai",
            "Zuko "
        ],
        "enemies"=> [
            "Iroh",
            "Zuko",
            "Kuei",
            "Long Feng",
            "Mai",
            "Ty Lee",
            "Ursa "
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
        "name"=> "Azula",
        "affiliation"=> " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68db",
        "allies"=> [
            "Fire Nation"
        ],
        "enemies"=> [
            "Water Tribes"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/a/ad/Azula_%28games%29.png/revision/latest?cb=20131228015042",
        "name"=> "Azula (games)",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68dc",
        "allies"=> [
            "Azula"
        ],
        "enemies"=> [
            "Iroh"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/b/bc/Azula%27s_ship_captain.png/revision/latest?cb=20130625131841",
        "name"=> "Azula's ship captain",
        "affiliation"=> "Fire Nation Navy"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68dd",
        "allies"=> [
            "Iroh"
        ],
        "enemies"=> [
            "Ozai",
            ""
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/1/1e/Azulon.png/revision/latest?cb=20140331143003",
        "name"=> "Azulon",
        "affiliation"=> " Fire Nation Fire Nation Royal Family Military of the Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68ef",
        "allies"=> [
            "Azula"
        ],
        "enemies"=> [
            "Sokka"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/0/02/Bully_guard.png/revision/latest?cb=20120702232626",
        "name"=> "Bully guard",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68e4",
        "allies"=> [
            "Azula"
        ],
        "enemies"=> [
            "Azula"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/4/48/Banished_servant.png/revision/latest?cb=20120222022610",
        "name"=> "Banished servant",
        "affiliation"=> " Fire Nation Royal Family (formerly) Azula's servants (formerly)"
    },
    {
        "_id"=> "5cf5679a915ecad153ab68fe",
        "allies"=> [
            "Jeong Jeong"
        ],
        "enemies"=> [
            "Fire Nation"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/8/8d/Chey.png/revision/latest?cb=20140116103519",
        "name"=> "Chey",
        "affiliation"=> " Fire Nation Army (formerly)"
    },
    {
        "_id"=> "5cf5679a915ecad153ab692b",
        "allies"=> [
            "Aang"
        ],
        "enemies"=> [
            "Combustion Man"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/c/ca/Train_engineer.png/revision/latest?cb=20130308171418",
        "name"=> "Fire Nation train engineer",
        "affiliation"=> " Fire Nation Fire Nation train"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6927",
        "allies"=> [
            "Her husband",
            ""
        ],
        "enemies"=> [
            "Amon"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/f/f9/Fire_Nation_councilwoman.png/revision/latest?cb=20121110144847",
        "name"=> "Fire Nation councilwoman",
        "affiliation"=> " Fire Nation United Republic Council (formerly)"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6917",
        "allies"=> [
            "Zuko"
        ],
        "enemies"=> [
            "Red Lotus"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/e/ec/Druk.png/revision/latest?cb=20140730151855",
        "name"=> "Druk",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6926",
        "allies"=> [
            "Sokka"
        ],
        "enemies"=> [
            "Earth Kingdom"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/8/82/Fire_Nation_company_leader.png/revision/latest?cb=20121230121700",
        "name"=> "Fire Nation company leader",
        "affiliation"=> "Fire Nation Army"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6924",
        "allies"=> [
            "His friend"
        ],
        "enemies"=> [
            "Katara"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/d/d4/Fire_Nation_bar_patron.png/revision/latest?cb=20130308170517",
        "name"=> "Fire Nation bar patron",
        "affiliation"=> "Fire Nation"
    },
    {
        "_id"=> "5cf5679a915ecad153ab692c",
        "allies"=> [
            "Admiral"
        ],
        "enemies"=> [
            "Aang"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/8/8a/Fire_Navy_officer.png/revision/latest?cb=20140519094412",
        "name"=> "Fire Navy officer",
        "affiliation"=> "Fire Nation Navy"
    },
    {
        "_id"=> "5cf5679a915ecad153ab6925",
        "allies"=> [
            "Fire Nation bar patron"
        ],
        "enemies"=> [
            "Katara"
        ],
        "photoUrl"=> "https://vignette.wikia.nocookie.net/avatar/images/4/40/Fire_Nation_bar_patron%27s_friend.png/revision/latest?cb=20130308170725",
        "name"=> "Fire Nation bar patron's friend",
        "affiliation"=> "Fire Nation"
    }
]
end
