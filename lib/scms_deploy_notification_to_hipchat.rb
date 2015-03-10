require 'hipchat'

# Our HipChat background color assignments:
NEW_RELIC_WARNING   = 'red'
PIVOTAL             = 'yellow'
NEW_RELIC_RECOVERED = 'green'
SCMS_PUSHING        = 'purple'

# The message to be displayed should be passed in ARGV[0]:
client = HipChat::Client.new(ENV['HIPCHAT_API_TOKEN'])
client['Operations'].send('Jenkins', ARGV[0], :color => SCMS_PUSHING, :notify => true)
