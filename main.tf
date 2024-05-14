# terraform block
terraform {
  required_version = ">=1.5.7"
  required_providers {
    aws={
        source = "hashicorp/aws"
        version = ">=5.0"
    }
  }
}




provider "aws" {
  region = var.region
  profile = "default"
}

#create a ElastiCache Redis Cluster


resource "aws_elasticache_cluster" "example" {
  cluster_id           = "cluster-example"
  engine               = "redis"
  node_type            = "cache.m4.large"
  num_cache_nodes      = 1
  port                 = 6379
  
}

