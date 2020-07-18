PYTHON3="\Libs\Python37\Python37_64\python.exe"


all: sdist
  @echo PY complete.

sdist:
  $(PYTHON3) setup.py sdist

clean:
  rmdir /q /s dist
  rmdir /q /s krome.egg-info