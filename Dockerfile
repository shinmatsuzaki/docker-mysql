FROM mysql:8.0
MAINTAINER ShinMatsuzaki

# 初期化処理用SQL
COPY world.sql /docker-entrypoint-initdb.d/world.sql 
