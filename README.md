# Manim Demo

## About

[Manim](https://www.manim.community/) is an animation engine for explanatory math videos.

This repo is an experiment for how to run Manim in a training environment.
It is running in a container, using [Binder](https://mybinder.readthedocs.io/en/latest/index.html).

The notebook itself ([`manim-first-steps.ipynb`](manim-first-steps.ipynb)) is a copy of
[the Manim Community's demo](https://github.com/ManimCommunity/jupyter_examples/blob/main/First%20Steps%20with%20Manim.ipynb),
just to test our container.
Alternate notebooks to follow....

## Run Online

Click here to start the notebook: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/clifford2/manim-demo/main?urlpath=%2Fdoc%2Ftree%2Fmanim-first-steps.ipynb)

## Development

To test / run this locally, try:

```sh
podman build -t manim-demo .
podman run --rm -p 8888:8888 -v ./jupyter_server_config.py:/manim/.jupyter/jupyter_server_config.py:ro,Z localhost/manim-demo:0.0.1 jupyter server
```

The login at `http://0.0.0.0:8888/lab`. Password is "secret".
