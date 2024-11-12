# demo-kubernetes-template

Use this template to bootstrap your Kubernetes-based hands on cloud environment.

Includes a documentation stack (mkdocs) in the `docs` folder.

documentation served here:

[sergiohinojosa.github.io/kind-bank-of-anthos-test](https://sergiohinojosa.github.io/kind-bank-of-anthos-test){target=_blank}


## Installing docstack

```
pip install -r requirements-docs.txt
```

Start docs:

```
mkdocs serve -a localhost:8000
# or python -m mkdocs serve -a localhost:8000
```
