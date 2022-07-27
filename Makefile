
build: clean
	# dont need to do for base but is useful for deps
	# mkdir .build/
	# cd .build
	# cp base.Dockerfile test.base.Dockerfile
	# sed -i "1s/.*/$var/" file.txt
	docker build -f base.Dockerfile . -t test:base
attach:
	docker run -it test:base
clean:
	rm -rf .build/