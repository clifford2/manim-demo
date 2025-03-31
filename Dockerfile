# Based on https://github.com/ManimCommunity/jupyter_examples

FROM docker.io/manimcommunity/manim:v0.19.0

USER root
RUN pip install --no-cache notebook
ENV DEBIAN_FRONTEND=noninteractive
RUN /usr/bin/apt-get update && apt-get install -y --no-install-recommends ffmpeg && apt-get clean; rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

USER 1000

COPY --chown=manimuser:manimuser --chmod=0666 *.ipynb /manim
