all: build

build: 
	@stack build
	@stack exec -- personal-website build
	-mv -v docs/md/* docs
	@cp -v CNAME robots.txt docs
	@rm -vrf docs/md

watch: build
	@stack exec -- personal-website watch

clean: 
	@stack exec -- personal-website clean
	@stack clean
