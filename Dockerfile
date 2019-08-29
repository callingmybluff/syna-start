FROM jguyomard/hugo-builder

WORKDIR /app/
COPY . / /app/

RUN git submodule foreach git pull
RUN hugo
RUN echo $PORT

EXPOSE $PORT

CMD ["hugo", "server", "--port=8080"]
