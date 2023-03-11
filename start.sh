# start Redis
redis-cli shutdown
redis-server --bind 127.0.0.1 &

# start Postgres
pg_ctl stop

initdb -E UTF8
cp postgresql.conf.tpl data/postgresql.conf

socker_dir="\/home\/runner\/${REPL_SLUG}\/postgres"

sed -i "s/replace_unix_dir/${socker_dir}/" data/postgresql.conf

pg_ctl -l /home/runner/${REPL_SLUG}/postgresql.log start

# start Nginx
pkill nginx

nginx -e /home/runner/$REPL_SLUG/logs/error.log -c /home/runner/$REPL_SLUG/nginx.conf

# start Mastodon
cd live
bundle config with 'development'
bundle install
yarn install --pure-lockfile
bundle exec rails db:setup
bundle exec rails server & ./bin/webpack-dev-server