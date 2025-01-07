
# تعریف دستورات برای فرمت کد
format:
	black .
	isort .

# تعریف دستورات برای lint
lint:
	mypy src/
	pyright

# تعریف دستورات برای نصب وابستگی‌ها
install:
	python -m venv venv
	venv\Scripts\pip install -r requirements.txt


# make format
# make lint
