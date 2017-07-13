# Fire Chat

## DEMO
https://s3-ap-northeast-1.amazonaws.com/fire-chat/fire-chat-demo.html

## 利用者向け
### 使い方
```
<html>
  <head>
    <link rel="import" href="https://s3-ap-northeast-1.amazonaws.com/fire-chat/fire-chat.html" />
  </head>
  <body>
    <fire-chat auth-domain="xxx-12345.firebaseapp.com" database="https://xxx-12345.firebaseio.com/" api-key="xxxxxxxxxxxxxxxx" room-id="[[ルームID]]" my-id="[[自分のID]]" users="[[ユーザー情報]]" />
  </body>
</html>
```

- ルームID
  チャットルームのIDです。ユニークに自由に設定してください。
- 自分のID
  投稿者のIDです。
- ユーザー情報
  ユーザー情報です。配列です。JSON形式で指定してください。`[{"id": 1, "name": "Taro", "photoUrl": "https://xxx.com/users/1.png"}]`のような形式です。
  JavaScriptによって設定する場合は以下のような形です。
  ```
    document.querySelector('fire-chat').set('users', [{"id": 1, "name": "Taro", "photoUrl": "https://xxx.com/users/1.png"}])
  ```

## 開発者向け
### 準備
- `yarn install`
- `bower install`

### 開発
- `yarn run dev`

### ビルド（1ファイル化)
- `yarn run build`
