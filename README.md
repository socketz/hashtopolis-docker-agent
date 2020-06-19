#Hashtopolis Docker Agent

## Quick start
1. Make a copy file env.example to .env
2. Put your voucher and hashtopolis URL in .env file
3. Execute `docker-compose up -d`

## Build & Run Testing 
```
docker build --rm -t hpda --build-arg HP_SERVER_URL=http://<server_ip>:<server_port>/ --build-arg HP_VOUCHER=<voucher> .
docker run --rm --name agent --env-file=.env hpda
```

## TODO
[ ] Add GPU capabilities

## Credits
Thanks to [hashtopolis-agent-python](https://github.com/s3inlc/hashtopolis-agent-python) by Sein Coray ([@s3inlc](https://github.com/s3inlc))
