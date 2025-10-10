serve:
	mise exec uv -- uv run mkdocs serve

export:
	mise exec uv -- uv pip freeze > requirements.txt
