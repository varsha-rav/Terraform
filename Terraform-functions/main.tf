provider "aws" {
    region = var.region
}

resource "aws_instance" "dev" {
    ami = lookup(var.ami,var.region)  //returns map item based on key 
    instance_type = "t2.micro"
    count = length(var.tags) //length of list

    tags = {
        Name = element(var.tags,count.index) //returns list item based on index
        CreationDate = formatdate("DD MMM YYYY hh:mm ZZZ",timestamp()) //time format
   }
  
}