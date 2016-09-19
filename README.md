# Jekyll Docker Workflow

Create the image (you can choose another tag instead of `jekyll-docker`):

```
$ docker build -t jekyll-docker .
```

Create a new jekyll site:

```
$ docker run -v "$PWD:/src" jekyll-docker new . -f
```

Change the `url` value in the `_config.yml` from `"example.com"` to an empty string (`""`).

Serve the site on [http://localhost:4000]:

```
$ docker run -v "$PWD:/src" -p 4000:4000 --rm jekyll-docker
```

You can change the files in the workdir and they will be rendered automatically by jekyll.
