# RAG on research papers

## Step 1: Data Ingestion
### Setting up Apache Airflow
`pip install apache-airflow`
`pip install "apache-airflow[kubernetes]"`
`./start-airflow.sh`
`airflow dags trigger pdf_etl_pipeline --conf '{"pdf_file": "/Users/Sushmitha/Bigdata/Project/data-ingestion/data/tao.pdf"}'`


## Installation
- Install all required deps using `pip install -r requirements.txt`
- We will be using Qdrant for the vector database. We can start it by using `docker compose up`
- Add a `.env` file at the project root with the following variables
  ```
    OPENAI_API_KEY=st...
  ```


## References
[Unstructured for data extraction and cleaning](https://docs.unstructured.io/open-source/introduction/overview)<br/>
[Notebook showing different ways to handle chunking](https://github.com/FullStackRetrieval-com/RetrievalTutorials/blob/main/tutorials/LevelsOfTextSplitting/5_Levels_Of_Text_Splitting.ipynb)
Langchain OpenAI