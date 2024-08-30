terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.65.0"
    }
  }
}

provider "aws" {
  region = "ap-southeast-2"  # Specify your desired AWS region
}

locals {
  users = {
    "user1" = {
      username = "jerome"
      groups   = ["group1", "group2"]
    },
    "user2" = {
      username = "marc"
      groups   = ["group2", "group3"]
    }
  }
  groups_lists = [for user in local.users : user.groups]
  flat_groups  = flatten(local.groups_lists) # flatten the list
  groups = toset(local.flat_groups) # convert list to set
}

resource "aws_iam_group" "groups" {
  for_each = local.groups
  name = each.value
}

resource "aws_iam_user" "users" {
  for_each = local.users
  name = each.value.username
}

resource "aws_iam_user_group_membership" "memberships" {
  for_each = local.users

  user = aws_iam_user.users[each.key].name
  groups = [for g in each.value.groups : aws_iam_group.groups[g].name] 
}
