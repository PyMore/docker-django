# docker-django

```shell
docker run -d --name demo -p 80:80 -v "$(pwd)"/wheelhouse:/usr/share/nginx/html temaplte
```
### Create VirtualEnv
```shell
virtualenv (name)

```

### Active virtualEnv
```shell
source (name)/bin/activate

```

### Install packages
```shell
pip install -r requirements.txt

```


### Run project

```python
python  manage.py runserver
