## Twitter API Sample

4/24 の練習で使った内容

## Steps

### Twitter にアプリケーション登録

https://apps.twitter.com/

> URL は http://127.0.0.1/ でもいれておけばOK

> Permissions ページで、とりあえず Read only にしておくといいと思います

### 登録したら、キーとトークンを取得

__Keys and Access Token__ のページから以下を記録

- Consumer Key (API Key)
- Consumer Secret (API Secret)
- Access Token
- Access Token Secret

### Client クラスに取得したキーとトークンを設定

```ruby
client = Twitter::REST::Client.new do |config|
  config.consumer_key = 'Consumer Key'
  config.consumer_secret = 'Consumer Secret'
  config.access_token = 'Access Token'
  config.access_token_secret = 'Access Token Secret'
end
```

> 本来はコードにベタ書きしないほうがいいです

## 参考

- https://github.com/sferik/twitter
- http://www.rubydoc.info/gems/twitter/Twitter/REST/Search
- https://dev.twitter.com/rest/public/search

## ここに含まれるコードの実行方法

```
$ bundle install
$ bundle exec ruby twitter_crawler.rb
```

## 今後の展望

- 検索ワードを別ファイルにしておき、それをループさせて検索させるようにする
- 自宅のサーバーに配置して、cron 等で定期実行させる
- 検索結果について
  - まずは puts の出力をファイルにリダイレクトさせてたまに見るでいいと思います
  - チャットやメールに投げるようにしてもいいと思います
