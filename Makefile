.PHONY: lint format test

# Цели up/down/logs/migrate/seed добавляются в M2 (инфраструктура) и M16 (сидер).

lint:
	python -m ruff check .
	python -m ruff format --check .

format:
	python -m ruff check --fix .
	python -m ruff format .

test:
	python -m pytest
