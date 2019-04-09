FROM python:3.7.3@sha256:7e6c00cc553fdce06c1bcfcbf34c73a0f3623a8fc9ce88c8fb91671f2cbc0dab

COPY requirements.txt /

RUN apt update \
  && apt install --assume-yes --no-install-recommends build-essential \
  && pip install --upgrade pip \
  && pip install --upgrade setuptools \
  && pip install -r requirements.txt

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]
