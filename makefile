WORKING_DIR=C:\Users\kouey\Desktop\corinne

all: java cs cpp js py
  @echo done!

cs:
  cd $(WORKING_DIR)\code\cs
  make

cpp:
  cd $(WORKING_DIR)\code\cpp
  make

java:
  cd $(WORKING_DIR)\code\java
  make

py:
  cd $(WORKING_DIR)\code\py
  make

js:
  cd $(WORKING_DIR)\code\js
  make

clean:
  cd $(WORKING_DIR)\code\cs
  make clean
  cd $(WORKING_DIR)\code\cpp
  make clean
  cd $(WORKING_DIR)\code\java
  make clean
  cd $(WORKING_DIR)\code\js
  make clean  
  cd $(WORKING_DIR)\code\py
  make clean
  @echo finished cleaning!
