RevealJS-Docker
===============

A dockerized version of the [Reveal JS](http://lab.hakim.se/reveal-js/#/) presentation software.

```
  docker-compose up -d
```

And open a browser to `http://localhost:8000`. Alternatively, there is a
`run.sh` script for use without Docker compose.

To use your own slides, replace `/slides/slides.md` with your own slides in
Markdown format.

If you need to include other files e.g. images, keep them with the presentation
file and add them in the `slides` directory. As the image runs as the "slides"
user for security, you may need to run `chmod go+r` on files.

If you need to change some options or change the theme, update the files in the
`docker/revealjs-files` directory and rebuild the image:

```
  docker-compose build
```

This project is *heavily* based on (https://github.com/amouat/revealjs-docker).
