#!/bin/bash
sleep 3
STATUS=$(curl -s -o /dev/null -w '%{http_code}' http://localhost/)
if ["$STAUS"= "200"]; then
  echo"검증성공: HTTP $STATUS"
  exit 0
else
  echo "검증실패: HTTP $STATUS"
  exit 1
fi
