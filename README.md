# AWS_EventBridge_Lambda_Tutorial

[チュートリアル: EventBridge を使用した AWS Lambda 関数のスケジュール](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-run-lambda-schedule.html)を試す。  
AWS Lambdaのデプロイは手動、EventBridgeの作成はaws cliを使う。

## AWS Lambda 

手動で作成する。

``` bash
# 関数確認
aws lambda get-function --function-name calledByEventBridge
```

## EventBridge

下記で5分後にAWS Lambdaを実行するEventBridgeを作成する。

``` bash
cd EventBridge
bash create_EventBridge.sh
```

EventBridgeに```call_lambda_schedule```が作成される。  
5分毎にCloudWatchの```/aws/lambda/calledByEventBridge```にログが出力される。

## 後始末

下記を削除する。

- CloudWatchLogs
  - ```/aws/lambda/calledByEventBridge```
- EventBridge
  - ```call_lambda_schedule```
- AWS Lambda
  - 関数：calledByEventBridge


## 参考

- [チュートリアル: EventBridge を使用した AWS Lambda 関数のスケジュール](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-run-lambda-schedule.html)
- [.zip ファイルアーカイブで Node.js Lambda 関数をデプロイする](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-run-lambda-schedule.html)
