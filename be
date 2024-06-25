# Generic wrapper that runs bundle exec calls
#
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Install bundler if necessary
gem install bundler --conservative || exit -1

bundle config set --local path '.bundle' || exit -1

# install missing dependencies
# try multiple times in case something fails
(bundle check || bundle install --jobs=4 --retry=3) || exit -1

bundle exec "$@" || exit -1
