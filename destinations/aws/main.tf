locals {
  namespace = var.namespace
}

data "aws_region" "current" {}

module "k8s" {
  source = "../k8s"
  data_dir = var.data_dir
  endpoint = var.endpoint
  instance = local.instance
  uwsgi_uid = var.uwsgi_uid
  uwsgi_gid = var.uwsgi_gid
  namespace = local.namespace
  admin_api_key = var.admin_api_key
  microbedb_path = "${var.data_dir}/microbedb/microbedb.sqlite"
}