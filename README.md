# Manim Demo

## About

[Manim](https://www.manim.community/) is an animation engine for explanatory math videos.

This repo is an experiment for how to run Manim in a training environment.
It is running in a container, using [Binder](https://mybinder.readthedocs.io/en/latest/index.html).

Notebooks:

- [`hello-world.ipynb`](hello-world.ipynb) is a very basic example, just to test the container image
- [`manim-first-steps.ipynb`](manim-first-steps.ipynb) is a copy of [the Manim Community's demo](https://github.com/ManimCommunity/jupyter_examples/blob/main/First%20Steps%20with%20Manim.ipynb)

## Run Online

Click here to start the notebook: [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/clifford2/manim-demo/main?urlpath=%2Fdoc%2Ftree%2Fhello-world.ipynb)

## Development

To test / run this locally, try:

```sh
podman build -t manim-demo .

podman run --rm -p 8888:8888 \
	-v ./jupyter_server_config.py:/manim/.jupyter/jupyter_server_config.py:ro,Z \
	manim-demo \
	jupyter lab

# or # podman run --rm -p 8888:8888 manim-demo jupyter lab --ip 0.0.0.0
```

The login at <http://0.0.0.0:8888/lab>. Password is "secret".
