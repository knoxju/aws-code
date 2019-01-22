#Accessing your S3 bucket from RStudio
#Julia Knox - 1.22.19

#Install AWS S3 Libraries

install.packages("aws.s3")
library(aws.s3)

# Set up your keys and your region here. N Virginia is US-East-1
Sys.setenv("AWS_ACCESS_KEY_ID" = "AKIAJ7I3FOCKQHT45GEQ",
           "AWS_SECRET_ACCESS_KEY" = "kkaqQyDC3onuT3vYtSjF91PqLiMN3UAzcauv3bqp",
           "AWS_DEFAULT_REGION" = "us-east-1")

#See your buckets 
bucketlist()

#Get the bucket you want
get_bucket("juliaknox")
