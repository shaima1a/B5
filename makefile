# Default SUB to empty if not provided
SUB =

preview:
	quarto preview ./content

publish:
	quarto publish gh-pages ./content --no-render

clean:
	rm -rf content/_freeze/$(SUB)
	rm -rf content/_size/$(SUB)
	rm -rf content/.quarto/_freeze$(SUB)
	rm -rf content/.quarto/idx/$(SUB)
	rm -rf content/_site/$(SUB)
	rm -rf content/site_libs/$(SUB)

# restore:
# 	git restore --staged --worktree content/ old/
# 	git clean -fd content/ old/