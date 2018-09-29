docker run -d -p 9011:80 --name log_challenge logviewer
docker run -d -p 9022:80 --name sqli_chal sqli
docker run -d -p 9033:8080 --name tc_chal tcmanager
docker run -d -p 9044:4000 --name geddy_chal geddy
docker run -d -p 9055:1337 --name printfchal printf
