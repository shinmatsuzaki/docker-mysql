# docker-mysql
docker-composeで動作するMySQLのサンプル

### How To Use
- コンテナのビルド＆起動 `$ make`
- コンテナへのSSH `$ make ssh`
- コンテナへ上のmysqlに接続 `$ make mysql`
- コンテナの終了 `$ make clean`

### MySQlのDockerコンテナ専用の環境変数
https://qiita.com/nanakenashi/items/180941699dc7ba9d0922

### Dockerコンテナの公式ドキュメント
https://hub.docker.com/_/mysql?tab=description

### sample data
- mysql公式の `world database` を使用
https://dev.mysql.com/doc/index-other.html

### その他
- データの永続化のために、docker-compose.ymlにてvolumesを指定しており、コンテナの起動時に `./data` ディレクトリが作成されます。不要な場合はコンテナ停止後に手動での削除をお願いします。
```bash
sudo rm -rf ./data
```
