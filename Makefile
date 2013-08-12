
all: build

build: 
	sed -e 's/{{ app_cache }}/.cache\/app/g' -e 's/{{ app_port }}/8080/g' Dockerfile.template > Dockerfile
	docker build -t app_name .
	rm Dockerfile
