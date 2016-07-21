#!/bin/sh -xe

# Incoming WebHooks URL
WEBHOOKURL="https://hooks.slack.com/services/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"
# slack channel
CHANNEL="#botchannel"
# user name for direct message
USER="@takeno"
# slack user name
BOTNAME="Jeffry"
# slack icon
FACEICON="http://drive.google.com/uc?export=view&id=0B-6uJweum9gRR09Bd2V4bWpLdnc"

MESSAGE=""

  MESSAGE=`echo -e $@`

/bin/curl -s -S -X POST --data-urlencode \
 "payload={ 
  \"channel\": \"${CHANNEL}\",
  \"username\": \"${BOTNAME}\",
  \"icon_url\": \"${FACEICON}\",
  \"attachments\": [
      {
        \"color\": \"danger\",
        \"text\": \"${MESSAGE}\"
      }
    ]
 }" \
  ${WEBHOOKURL} >/dev/null