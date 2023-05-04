.PHONY: all clean gh

all: gh

gh:
	rm -rf _gh-pages
	mkdir _gh-pages
	cp -r img _gh-pages/
	cp index.html _gh-pages/
	cd _gh-pages && git init . && git add . && \
		git commit -m "deploy" && \
		git push -f git@github.com:suapapa/marp_my_tinkerer_story.git main:gh-pages

clean:
	rm -rf _gh-pages
