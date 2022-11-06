
build:
	mkdocs build

publish:
	mkdocs gh-deploy --remote-branch gh-pages

serve:
	mkdocs serve

browse:
	xdg-open https://mmngreco.github.io/blog/

venv:
	python -m venv venv
	./venv/bin/python -m pip install -r requirements.txt
