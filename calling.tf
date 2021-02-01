module "sg" {
  source = "../modules/sg/sg_module.tf"
  sg_name = ["sample-sg1","sample-sg2"]
  description = "sample sg desc"
  tags = { "Name" = "sg-name" }
}

