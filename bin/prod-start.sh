#!/usr/bin/env sh

set +x pipefail

bundle check || bundle install
yarn install
bundle exec rails db:create db:migrate
bundle exec rails assets:precompile
bundle exec puma -C config/puma.rb