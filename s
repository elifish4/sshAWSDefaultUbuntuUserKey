KEY="/home/elifish/.ssh/${S}"
if [ "$1" != "-c" ]; then
       ssh -o "StrictHostKeyChecking no" -o ConnectTimeout=10  -i $KEY ubuntu@$1 $2
else
       ssh
fi

if [ "$1" == "stayin" ]; then
       ssh -i $KEY ubuntu@$2
fi
