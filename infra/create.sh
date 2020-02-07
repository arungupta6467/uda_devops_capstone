if [ $# -eq 3 ] 
then
  
aws cloudformation create-stack --stack-name $1 \
                                --template-body file://$2 \
                                --parameters file://$3 \
                                --region=us-west-2 \
                                --capabilities CAPABILITY_NAMED_IAM
else
    echo "Usage: Please provide stack-name a string, template-body and parameters as file names with paths."
fi