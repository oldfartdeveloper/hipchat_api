require 'hipchat'

# Our HipChat background color assignments:
NEW_RELIC_WARNING   = 'red'
PIVOTAL             = 'yellow'
NEW_RELIC_RECOVERED = 'green'
SCMS_PUSHING        = 'purple'

client = HipChat::Client.new(ENV['HIPCHAT_API_TOKEN'])
client['Operations'].send('Jenkins', 'CMS about to be deployed to staging', :color => SCMS_PUSHING, :notify => true)
