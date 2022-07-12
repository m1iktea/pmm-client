# pmm-client with no auth
## Why
I have been troubled by monitoring percona Mongodb cluster recently.
I'm not used to PMM server monitoring percona Mongo cluster , I want to be able to scrape metrics exported by exporter from a Prometheus instances that is outside of the PMM server. I have tried many ways to access the metrics with a defined passwd , but it didn't work. 
In my kubernetes env , there is no security problem , so I decide to run exporter with noauth

## How to use 
I installed percona Mongodb cluster by helm . so for me just change pmm-client image repository
```yaml
...
pmm:
  enabled: true
  image:
    repository: mi1ktea/pmm-client
    tag: 2.27.0
  serverHost: your-pmm-server
...
```



