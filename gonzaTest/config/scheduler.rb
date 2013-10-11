require 'rubygems'
require 'rufus/scheduler'

scheduler = Rufus::Scheduler.new

scheduler.every '20s' do
    puts '------------------------ EVERY ------------------------'
end

scheduler.cron '*/1 * * * *' do
    # every day of the week at 22:00 (10pm)
    puts '------------------------ CRON ------------------------'
end

=begin

scheduler.in '20m' do
	puts "order ristretto"
end

scheduler.at 'Thu Mar 26 07:31:43 +0900 2009' do
	puts 'order pizza'
end

scheduler.every '5m' do
	puts 'check blood pressure'
end
=end
