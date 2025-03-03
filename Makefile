.PHONY: setup run airflow trigger-api

# Install requirements
# setup:
# 	pip install -r requirements.txt

# Start Docker services
run:
	docker compose up -d
	export OPEN_API_KEY=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
	chmod +x ./data-ingestion/start-airflow.sh
	airflow standalone &
	sleep 20
	airflow dags trigger pdf_etl_pipeline --conf '{"pdf_file": "<add_path_here>"}'
	python ./api/app.py
	curl -X POST http://127.0.0.1:5000/search -H "Content-Type: application/json" -d '{"query": "Where is the intermediate data stored in map reduce"}'
