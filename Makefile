# コンテナを起動
.PHONY: start
start:
	docker-compose up -d 

# コンテナを起動 + build
.PHONY: start-build
start-build:
	docker-compose up -d --build

# ログを表示
.PHONY: logs
logs:
	docker-compose logs

# goのログを表示
.PHONY: logs-go
logs-go:
	docker logs -f golang-container

# 開発終了
.PHONY: kill
kill:
	docker-compose kill

# DBデータをdump
.PHONY: dump
dump:
	docker exec -it mysql-container mysqldump -u golang -pgolang -A > dump.sql

# volume毎削除
.PHONY: down
down:
	docker-compose down --volumes

# コンテナの状態を表示
.PHONY: ps
ps:
	docker-compose ps

# 全てのコンテナの状態を表示
.PHONY: ps-all
ps-all:
	docker ps -a

# mysqlのコンテナの中に入る
.PHONY: on-db
on-db:
	docker exec -it mysql-container bin/bash

# foのコンテナの中に入る
.PHONY: on-go
on-go:
	docker exec -i -t golang-container sh

# コンテナをリスタート
.PHONY: restart
restart: kill start
