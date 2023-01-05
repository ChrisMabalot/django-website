build:
	docker build --force-rm ${options} -t website-portfolio:latest .

build-prod:
	${MAKE} build options="--target production"

compose-start:
	docker-compose up --remove-orphans ${options}