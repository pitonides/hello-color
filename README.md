# Hello Color

Escupe por la consola un texto en colores y con formato.

## Requerimientos

[Pyenv](https://github.com/pyenv/pyenv#installation) - Para gestionar las versiones de python instaladas en tu sistema operativo

Para instalar (Windows):

```
pip install pyenv-win --target %USERPROFILE%\.pyenv

[System.Environment]::SetEnvironmentVariable('PYENV',$env:USERPROFILE + "\.pyenv\pyenv-win\","User")

[System.Environment]::SetEnvironmentVariable('PYENV_HOME',$env:USERPROFILE + "\.pyenv\pyenv-win\","User")

[System.Environment]::SetEnvironmentVariable('path', $env:USERPROFILE + "\.pyenv\pyenv-win\bin;" + $env:USERPROFILE + "\.pyenv\pyenv-win\shims;" + [System.Environment]::GetEnvironmentVariable('path', "User"),"User")

pyenv rehash
```

[Pipenv](https://pipenv.pypa.io/en/latest/) - Para gestionar las bibliotecas (dependencias del proyecto)

Para instalar:

```
pip install --user pipenv
```

## Ejemplo

Para ejecutar ingresa el siguiente comando  en la carpeta del proyecto: `python main.py`.

### Resultado

```
 _   _ _   _   _                   _ 
| | | (_) | |_| |__   ___ _ __ ___| |
| |_| | | | __| '_ \ / _ \ '__/ _ \ |
|  _  | | | |_| | | |  __/ | |  __/_|
|_| |_|_|  \__|_| |_|\___|_|  \___(_)

```

## Docker

    docker build -t hello-color .
    docker run --rm -t hello-color

### Develop

    docker build --target develop  -t hello-color:develop .
    docker run --rm -it -v $PWD:/opt/hello-color hello-color:develop
