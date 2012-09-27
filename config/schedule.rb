# -*- coding: utf-8 -*-
# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever


# mameblo Twitter から最新のつぶやきを拾ってくる
# OAuth無しだと 150リクエスト/1hour 超えると制限かかる
every 1.hours, at: 'start of the month at 10:00am' do
  rake "develop:brother_tweet"
end