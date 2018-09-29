docker rm -f sqli_chal && docker run -d -p 9011:80 --name sqli_chal sqli
docker rm -f log_challenge && docker run -d -p 9022:80 --name log_challenge logviewer
docker rm -f tc_chal && docker run -d -p 9033:8080 --name tc_chal tcmanager
docker rm -f geddy_chal && docker run -d -p 9044:4000 --name geddy_chal geddy
docker rm -f printfchal && docker run -d -p 9055:1337 --name printfchal printf
