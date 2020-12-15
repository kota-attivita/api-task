# Markup Task

バックエンドの課題です。

今回の課題は下記の記事を参考にwebアプリを作成してください。（go、mysql、外部ライブラリはdockerで既に準備しているので、セットアップの部分は飛ばしてください。）

['完成版ソースコード一気見せ'のみを着手してください。](https://qiita.com/dai-maru/items/7e97fc6623375c7eb14a#%E5%AE%8C%E6%88%90%E7%89%88%E3%82%BD%E3%83%BC%E3%82%B9%E3%82%B3%E3%83%BC%E3%83%89%E4%B8%80%E6%B0%97%E8%A6%8B%E3%81%9B)

## Rule
コードする上で下記のルールにしたがって開発をしてください。

- gitで必ずコード管理をする。
- 必ずDocker環境で作業をしてください。
- コマンドは記事に乗ってるのを使わずにこちらが用意したコマンドを使ってください。


## DB
DBの接続情報は下記でお願いします。

```
DB_USER := "test"
DB_PASS := "12345678"
DB_PORT := "mysql"
DB_NAME := "dev_api"

CONNECT := fmt.Sprintf("%s:%s@tcp(%s:%s)/%s?parseTime=true", DB_USER, DB_PASS, DB_PORT, "3306", DB_NAME)

db, err := gorm.Open(DBMS, CONNECT)
```

## Overview

`Docker`は下記のバージョンでお願いします。

| 名前    | バージョン |
| ------- | ---------- |
| Docker | v19.03.13   |

## Install

### Node Install

docker(docker-compose) を使うので下記の記事に従い docker をインストールしてください。（既にdockerが入っていればスキップ）

**for mac**

[dockerとdocker-composeのインストール](https://qiita.com/tomokei5634/items/7b1e7a121d5d7bc12116)


## Commands

開発で使うコマンドは下記になります。
​
### Init

プロジェクトをクローンしたら、ルートディレクトリから下記のコマンドを叩いてください。

```bash
make start-build
```

### Start Development

下記のコマンドで開発サーバーが立ち上あがり開発ができるようになります。

```
make start
```

http://localhost:8080

### Container Close

下記のコマンドで開発サーバーが終了します。

```
make kill
```

### log

下記のコマンドでログが確認できます。

```
make logs
```

下記のコマンドで開発をしながらログが確認できます。

```
make logs-go
```