##Imagem usada para construir o ambiente virtual

FROM python:3.11-slim-bookworm

## instalando a dependencia poetry
RUN pip install poetry==1.5.1

ENV POETRY_NO_INTERACTION= \
    POETRY_VIRTUALENVS_IN_PORJECT=1 \
    POETRY_VIRTUALENVS_CREATE=1 \
    POETRY_CACHE_DIR=/tmp/poetry_cache

WORKDIR /app

COPY pyproject.toml poetry.lock ./

RUN poetry install

# Imagem de tempo de execuação, usada apenas para executar o código
FROM python:3.1-slim-bookworm as runtime

ENV VIRTUAL_ENV=/app/.venv \
    PATH="/app/.venv/bin:$PATH"

COPY --from=build ${VIRTUAL_ENV} ${VIRTUAL_ENV}

COPY app ./app

ENTRYPOINT ["stremalit", "run", "stremalit_app.py"]