# microctfs
Small CTF challenges running on Docker

## logviewer

#### Build and Start logviewer challenge exposed on port 8000
Change docker ssh password on boot
```
echo 'printf("mdp\nmdp\n") | sudo passwd docker' > /var/lib/boot2docker/profile
```

Challenge Add to boot2docker (change all flags after deploy)

```
 cd /tmp && git clone https://github.com/mathieu244/microctfs.git &&  mv microctfs/* /var/lib/boot2docker/opt/
```

Add plugin:

ajouter les plugins désirer de ce repo un par un: https://github.com/CTFd/plugins

```
cd /var/lib/boot2docker/CTFd/plugins && git clone https://github.com/CTFd/CTFd-Docker.git
```

```
cd logviewer
docker build -t logviewer . 
docker run -d -p 8000:80 --name log_challenge logviewer
```

#### Restart logviewer challenge

```
docker rm -f log_challenge && docker run -d -p 8000:80 --name log_challenge logviewer
```

#### Stop logviewer challenge

```
docker rm -f log_challenge
```

## sqli

#### Build and Start sqli challenge exposed on port 8883

```
cd sqli
docker build -t sqli . 
docker run -d -p 8883:80 --name sqli_chal sqli
```

#### Restart sqli challenge

```
docker rm -f sqli_chal && docker run -d -p 8883:80 --name sqli_chal sqli
```

#### Stop sqli challenge

```
docker rm -f sqli_chal
```


## tcmanager

#### Build and Start tcmanager challenge exposed on port 8080

```
cd tcmanager
docker build -t tcmanager . 
docker run -d -p 8080:8080 --name tc_chal tcmanager
```

#### Restart tcmanager challenge

```
docker rm -f tc_chal && docker run -d -p 8080:8080 --name tc_chal tcmanager
```

#### Stop tcmanager challenge

```
docker rm -f tc_chal
```


## geddy

#### Build and Start geddy challenge exposed on port 40000

```
cd geddy
docker build -t geddy . 
docker run -d -p 40000:4000 --name geddy_chal geddy
```

#### Restart geddy challenge

```
docker rm -f geddy_chal && docker run -d -p 40000:4000 --name geddy_chal geddy
```

#### Stop geddy challenge

```
docker rm -f geddy_chal
```

## printf

#### Build and Start printf challenge exposed on port 1337

```
cd printf
docker build -t printf .
docker run -d -p 1337:1337 --name printfchal printf
```

#### Restart printf challenge

```
docker rm -f printfchal && docker run -d -p 1337:1337 --name printfchal printf
```

#### Stop geddy challenge

```
docker rm -f printfchal
```


## xxe

#### Build and Start xxe challenge exposed on port 8080

```
cd xxe
docker build -t xxe .
docker run -d -p 8080:8080 xxe mvn jetty:run
```

