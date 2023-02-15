## us-east-1 US East (N. Virginia)
module "us-east-1" {
  source                                  = "./modules/multi-region"
  input_vpc_name                          = var.input_vpc_name
  input_igw_name                          = var.input_igw_name
  input_public_rt_name                    = var.input_public_rt_name
  input_public_subnet_1_name              = var.input_public_subnet_1_name
  input_public_subnet_2_name              = var.input_public_subnet_2_name
  input_application_private_subnet_1_name = var.input_application_private_subnet_1_name
  input_application_private_subnet_2_name = var.input_application_private_subnet_2_name
  input_database_private_subnet_1_name    = var.input_database_private_subnet_1_name
  input_database_private_subnet_2_name    = var.input_database_private_subnet_2_name
  input_availability_zone_1a              = var.input_availability_zone_east_1a
  input_availability_zone_1b              = var.input_availability_zone_east_1b
  input_vpc_cidr_block                    = var.input_vpc_cidr_block
  input_public_subnet_1_cidr              = var.input_public_subnet_1_cidr
  input_public_subnet_2_cidr              = var.input_public_subnet_2_cidr
  input_application_private_subnet_1_cidr = var.input_application_private_subnet_1_cidr
  input_application_private_subnet_2_cidr = var.input_application_private_subnet_2_cidr
  input_database_private_subnet_1_cidr    = var.input_database_private_subnet_1_cidr
  input_database_private_subnet_2_cidr    = var.input_database_private_subnet_2_cidr
  providers = {
    aws = aws
  }
}

module "us-east-2" {
  source                                  = "./modules/multi-region"
  input_vpc_name                          = var.input_vpc_name
  input_igw_name                          = var.input_igw_name
  input_public_rt_name                    = var.input_public_rt_name
  input_public_subnet_1_name              = var.input_public_subnet_1_name
  input_public_subnet_2_name              = var.input_public_subnet_2_name
  input_application_private_subnet_1_name = var.input_application_private_subnet_1_name
  input_application_private_subnet_2_name = var.input_application_private_subnet_2_name
  input_database_private_subnet_1_name    = var.input_database_private_subnet_1_name
  input_database_private_subnet_2_name    = var.input_database_private_subnet_2_name
  input_availability_zone_1a              = var.input_availability_zone_east_2a
  input_availability_zone_1b              = var.input_availability_zone_east_2b
  input_vpc_cidr_block                    = var.input_vpc_cidr_block
  input_public_subnet_1_cidr              = var.input_public_subnet_1_cidr
  input_public_subnet_2_cidr              = var.input_public_subnet_2_cidr
  input_application_private_subnet_1_cidr = var.input_application_private_subnet_1_cidr
  input_application_private_subnet_2_cidr = var.input_application_private_subnet_2_cidr
  input_database_private_subnet_1_cidr    = var.input_database_private_subnet_1_cidr
  input_database_private_subnet_2_cidr    = var.input_database_private_subnet_2_cidr
  providers = {
    aws = aws.us-east-2
  }
}

module "us-west-1" {
  source                                  = "./modules/multi-region"
  input_vpc_name                          = var.input_vpc_name
  input_igw_name                          = var.input_igw_name
  input_public_rt_name                    = var.input_public_rt_name
  input_public_subnet_1_name              = var.input_public_subnet_1_name
  input_public_subnet_2_name              = var.input_public_subnet_2_name
  input_application_private_subnet_1_name = var.input_application_private_subnet_1_name
  input_application_private_subnet_2_name = var.input_application_private_subnet_2_name
  input_database_private_subnet_1_name    = var.input_database_private_subnet_1_name
  input_database_private_subnet_2_name    = var.input_database_private_subnet_2_name
  input_availability_zone_1a              = var.input_availability_zone_west_1a
  input_availability_zone_1b              = var.input_availability_zone_west_1b
  input_vpc_cidr_block                    = var.input_vpc_cidr_block
  input_public_subnet_1_cidr              = var.input_public_subnet_1_cidr
  input_public_subnet_2_cidr              = var.input_public_subnet_2_cidr
  input_application_private_subnet_1_cidr = var.input_application_private_subnet_1_cidr
  input_application_private_subnet_2_cidr = var.input_application_private_subnet_2_cidr
  input_database_private_subnet_1_cidr    = var.input_database_private_subnet_1_cidr
  input_database_private_subnet_2_cidr    = var.input_database_private_subnet_2_cidr
  providers = {
    aws = aws.us-west-1
  }
}

module "us-west-2" {
  source                                  = "./modules/multi-region"
  input_vpc_name                          = var.input_vpc_name
  input_igw_name                          = var.input_igw_name
  input_public_rt_name                    = var.input_public_rt_name
  input_public_subnet_1_name              = var.input_public_subnet_1_name
  input_public_subnet_2_name              = var.input_public_subnet_2_name
  input_application_private_subnet_1_name = var.input_application_private_subnet_1_name
  input_application_private_subnet_2_name = var.input_application_private_subnet_2_name
  input_database_private_subnet_1_name    = var.input_database_private_subnet_1_name
  input_database_private_subnet_2_name    = var.input_database_private_subnet_2_name
  input_availability_zone_1a              = var.input_availability_zone_west_2a
  input_availability_zone_1b              = var.input_availability_zone_west_2b
  input_vpc_cidr_block                    = var.input_vpc_cidr_block
  input_public_subnet_1_cidr              = var.input_public_subnet_1_cidr
  input_public_subnet_2_cidr              = var.input_public_subnet_2_cidr
  input_application_private_subnet_1_cidr = var.input_application_private_subnet_1_cidr
  input_application_private_subnet_2_cidr = var.input_application_private_subnet_2_cidr
  input_database_private_subnet_1_cidr    = var.input_database_private_subnet_1_cidr
  input_database_private_subnet_2_cidr    = var.input_database_private_subnet_2_cidr
  providers = {
    aws = aws.us-west-2
  }
}

# # us-east-2 US East (Ohio)
# module "us-east-2" {
#   source            = "./modules/multi-region"
#   cw_log_group_name = local.cw_log_group_name
#   tags              = local.tags
#   firehose_name     = local.firehose_name
#   iam_name_prefix   = local.iam_name_prefix
#   firehose_iam_role = local.firehose_iam_role
#   firehose_role_arn = local.firehose_role_arn
#   s3_bucket_arn     = local.s3_bucket_arn
#   ssm_param_name    = local.ssm_param_us-east-2
#   providers = {
#     aws = aws.us-east-2
#   }
# }

# # us-west-1 US West (N. California)
# module "us-west-1" {
#   source            = "./modules/multi-region"
#   cw_log_group_name = local.cw_log_group_name
#   tags              = local.tags
#   firehose_name     = local.firehose_name
#   iam_name_prefix   = local.iam_name_prefix
#   firehose_iam_role = local.firehose_iam_role
#   firehose_role_arn = local.firehose_role_arn
#   s3_bucket_arn     = local.s3_bucket_arn
#   ssm_param_name    = local.ssm_param_us-west-1
#   providers = {
#     aws = aws.us-west-1
#   }
# }

# # us-west-2 US West (Oregon)
# module "us-west-2" {
#   source            = "./modules/multi-region"
#   cw_log_group_name = local.cw_log_group_name
#   tags              = local.tags
#   firehose_name     = local.firehose_name
#   iam_name_prefix   = local.iam_name_prefix
#   firehose_iam_role = local.firehose_iam_role
#   firehose_role_arn = local.firehose_role_arn
#   s3_bucket_arn     = local.s3_bucket_arn
#   ssm_param_name    = local.ssm_param_us-west-2
#   providers = {
#     aws = aws.us-west-2
#   }
#}
