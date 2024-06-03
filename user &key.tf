provider "aws" {
  region = "us-east-1"
}
resource "aws_iam_user" "hm" {
  name = "hema"
  path = "/system/"
  tags = {
    tag-key = "tag-value"
  }
}
resource "aws_iam_access_key" "hm" {
  user = aws_iam_user.hm.name
}
data "aws_iam_policy_document" "hm_ro" {
  statement  {
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    }
}
resource "aws_iam_user_policy" "hm_ro" {
  name   = "administratorfullaccess"
  user   = aws_iam_user.hm.name
  policy = data.aws_iam_policy_document.hm_ro.json
}




 
    
