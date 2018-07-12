

build:
	docker build --no-cache -t ubuntu1604rp .

run:
	docker run -ti -p 8080:80 --name U1604SSRP ubuntu1604rp
