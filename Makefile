serve:
	poetry run mkdocs serve

export:
	poetry export --without-hashes --format=requirements.txt > requirements.txt