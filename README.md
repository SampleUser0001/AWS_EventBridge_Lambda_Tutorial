# AWS_EventBridge_Lambda_Tutorial

[チュートリアル: EventBridge を使用した AWS Lambda 関数のスケジュール](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-run-lambda-schedule.html)を試す。  
ただし、AWS Lambdaはserverless、EventBridgeの作成はaws cliを使う。

## 初期化

### AWS Lambda(serverless)

``` bash
serverless create --template aws-nodejs-ecma-script --name call_by_eventbridge --path app
cd app
npm install
```

### EventBridge



## 参考

- [チュートリアル: EventBridge を使用した AWS Lambda 関数のスケジュール](https://docs.aws.amazon.com/ja_jp/eventbridge/latest/userguide/eb-run-lambda-schedule.html)
- [【Serverless Framework】nodejsで始めるサーバーレスチュートリアル:Qiita](https://qiita.com/kousaku-maron/items/c591a1245bdd69c0dad3)