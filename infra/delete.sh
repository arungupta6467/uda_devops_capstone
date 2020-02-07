if [ $# -eq 1 ] 
then
  
aws cloudformation delete-stack --stack-name $1 --region us-west-2
else
    echo "Usage: Please provide stack-name"
fi
