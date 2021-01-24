## local envs
curl "http://localhost:5555/rad/jc.cumulocity:tools/envs" \
     -H 'Accept: application/json'

## local admin
curl "http://localhost:5555/rad/jc.cumulocity:tools/admin"

## get bridges
curl "http://localhost:5555/rad/jc.philips:c8y/bridges/1" \
     -H 'Accept: application/json'

## c8y admin
curl "http://lora-dev.cumulocity.com/service/philips-hue/rad/jc.cumulocity:tools/admin" \
     -H 'Accept: application/json' \
     -u 'john.carter@softwareag.com:m@nAge123'

## c8y env
curl "http://lora-dev.cumulocity.com/service/philips-hue/rad/jc.cumulocity:tools/envs" \
     -H 'Accept: application/json' \
     -u 'john.carter@softwareag.com:m@nAge123'

## get boostrap user
curl "http://lora-dev.cumulocity.com/application/applications/34734/bootstrapUser" \
     -u 'john.carter@softwareag.com:m@nAge123'

## get subscriptions
curl "http://lora-dev.cumulocity.com/application/currentApplication/subscriptions" \
     -u 't292953154/servicebootstrap_philips-hue:TCtCoG6QoR612r8gO98kgWbONj4a8Lua'

## c8y bridges
curl "http://lora-dev.cumulocity.com/service/philips-hue/rad/jc.philips:c8y/bridges/1" \
     -H 'Accept: application/json' \
     -u 'john.carter@softwareag.com:m@nAge123'

## is listening
curl "http://lora-dev.cumulocity.com/service/philips-hue/rad/jc.philips:c8y/bridge/1714044/listener" \
     -H 'Accept: application/json' \
     -u 'john.carter@softwareag.com:m@nAge123'

## provision
curl -X "POST" "https://Lora-dev.cumulocity.com/service/philips-hue/rad/jc.philips:c8y/provision/1714044" \
     -H 'Accept: application/json' \
     -H 'Content-Type: application/json' \
     -u 'john.carter@softwareag.com:m@nAge123' \
     -d $'{
  "token": "FGroP7ISY5ZGm8IPujEqn36sslIh"
}'

## ping
curl "https://Lora-dev.cumulocity.com/service/philips-hue/invoke/wm.server/ping" \
     -u 'john.carter@softwareag.com:m@nAge123'

## ping
curl "https://Lora-dev.cumulocity.com/service/philips-hue/ping" \
     -u 'john.carter@softwareag.com:m@nAge123'

## /health
curl "https://lora-dev.cumulocity.com/service/philips-hue/health" \
     -u 'john.carter@softwareag.com:m@nAge123'

## /health
curl "https://lora-dev.cumulocity.com/service/philips-hue/rad/jc.cumulocity:tools/health" \
     -u 'john.carter@softwareag.com:m@nAge123'

## restart service
curl -X "DELETE" "http://lora-dev.cumulocity.com/service/philips-hue/rad/jc.philips:c8y/restart" \
     -u 'john.carter@softwareag.com:m@nAge123'
