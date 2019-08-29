FROM jguyomard/hugo-builder

WORKDIR /app/
COPY . / /app/

RUN git submodule foreach git pull
RUN hugo

EXPOSE $PORT

CMD ['hugo', 'server', '-p', '$PORT']
