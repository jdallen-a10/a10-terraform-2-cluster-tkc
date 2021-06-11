# a10-terraform-2-cluster-tkc
Connect two K8s Clusters to one Thunder node using Thunder Kubernetes Connectors

You will need to create a config file for your K8s clusters.  On a Microk8s cluster, this is done by running the 'microk8s config' command and directing the output to a file.

The first time you run this will take awhile, as the K8s clusters will need to download containers off the Internet -- at least for the Thunder Kubernetes Connector.
