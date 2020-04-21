# npm protrcator cloud builder

builder image based on node with chrome installed for protractor tests to use in jenkins-x CI for e2e tests

build with tag and push
```
sudo docker build -t elhoutico/npm-protractor .
sudo docker push elhoutico/npm-protractor
```

to test locally:
```
sudo docker run -it elhoutico/npm-protractor
```
