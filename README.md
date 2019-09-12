

## unit testing

Setting a local git-hook `pre-push` which allow to perform a `git push` only if all tests have been successful !

1. execute `touch .git/hooks/pre-push`
2. write 

```sh
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

```

4. save the file.
5. execute `chmod +x .git/hooks/pre-push`
