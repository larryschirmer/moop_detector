# docker build -t larryschirmer/moop .
# docker run --name moop -p 8501:8501 -d larryschirmer/moop:latest

FROM tensorflow/serving

COPY best_model /models/1/

CMD ["tensorflow_model_server", "--port=8500", "--rest_api_port=8501", "--model_name=moop", "--model_base_path=/models"]
