if [ $# -eq 1 ] 
then
  
aws cloudformation list-stacks --stack-status-filter $1 --region us-west-2
else
    echo "Usage: Please provide stack-status-filter"
fi