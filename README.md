#docker-elasticsearch

为自己方便线上部署,所以build了个elasticsearch image.

快速启动
```
docker run -d --name elasticsearch -p 9200:9200 xiaorui/elasticsearch
```

指定config配置目录
```
docker run -d --name elasticsearch -p 9200:9200 -v /path/to/myconfig.file:/opt/elasticsearch/config/elasticsearch.yml xiaorui/elasticsearch
```

指定data目录
```
docker run -d --name elasticsearch -p 9200:9200 -v /data:/opt/elasticsearch/data xiaorui/elasticsearch
```


