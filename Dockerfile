# Based on https://github.com/ManimCommunity/jupyter_examples

FROM docker.io/manimcommunity/manim:v0.19.0

USER root
RUN pip install --no-cache notebook

USER 1000

COPY --chown=manimuser:manimuser . /manim
