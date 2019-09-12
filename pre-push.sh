
#!/bin/sh
printf "Starting Unit Tests\n"

npm run test

testResults=$?
if [ $testResults -eq 1 ]
then
    echo -e "\n Tests FAILED\n\n push ABORTED"
    exit 1
fi
exit 0
