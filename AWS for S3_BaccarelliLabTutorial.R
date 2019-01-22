#Accessing your S3 bucket from RStudio
#Julia Knox - 1.22.19

#Install AWS S3 Libraries

install.packages("aws.s3")
library(aws.s3)

# Set up your keys and your region here. N Virginia is US-East-1
Sys.setenv("AWS_ACCESS_KEY_ID" = "your_key_id_here,
           "AWS_SECRET_ACCESS_KEY" = "your_key_here",
           "AWS_DEFAULT_REGION" = "us-east-1")

#See your buckets 
bucketlist()

#Get the bucket you want
get_bucket("your_bucket_name_here")
