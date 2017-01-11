BE=bundle exec

console:
	$(BE) rails console

server:
	$(BE) rails server

test:
	$(BE) rspec

migrate:
	$(BE) rake db:migrate
