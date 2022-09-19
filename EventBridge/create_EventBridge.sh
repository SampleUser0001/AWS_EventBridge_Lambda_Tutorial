# !/bin/bash

# Lambdaを呼び出すEventBridgeを作成する。
schedule_name=call_lambda_schedule
aws events put-rule \
--name ${schedule_name} \
--schedule-expression 'rate(5 minutes)'

# Lambdaに権限を付与する
function_name=calledByEventBridge
statement_id=elb1
account_id=$(aws sts get-caller-identity | jq -r .Account)
region=ap-northeast-1

aws lambda add-permission \
--function-name ${function_name} \
--statement-id ${statement_id} \
--action 'lambda:InvokeFunction' \
--principal events.amazonaws.com \
--source-arn arn:aws:events:${region}:${account_id}:rule/${schedule_name}

echo "
[
    {
        \"Id\": \"1\", 
        \"Arn\": \"arn:aws:lambda:${region}:${account_id}:function:${function_name}\",
        \"detail\" : {
            \"key\" : \"hogehoge\"
        }
    }
]
" > target.json
aws events put-targets --rule ${schedule_name} --targets file://target.json

date