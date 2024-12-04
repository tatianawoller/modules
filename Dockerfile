FROM nvcr.io/nvidia/pytorch:22.12-py3
ENV TZ=Europe \
    DEBIAN_FRONTEND=noninteractive
RUN apt-get update -qq && apt-get install -y \
    build-essential \
    ffmpeg \
    libsm6 \
    libxext6 \
    procps

RUN pip install --upgrade pip
RUN pip install "careamics[examples]"

WORKDIR /app

COPY . /app
