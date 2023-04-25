#! /bin/bash

function create_template () {
  FILE_NAME=$1

  mkdir -p $FILE_NAME/src $FILE_NAME/test $FILE_NAME/lib
  cat ~/bin/testing.js > $PWD/$FILE_NAME/lib/testing.js

  echo "one = 1 " > $PWD/$FILE_NAME/src/$FILE_NAME.js
  echo "exports.one = one" >>$PWD/$FILE_NAME/src/$FILE_NAME.js

  echo "const testing = require('../lib/testing.js')" > $PWD/$FILE_NAME/test/$FILE_NAME-test.js
  echo "const projectFile = require('../src/$FILE_NAME.js')" >> $PWD/$FILE_NAME/test/$FILE_NAME-test.js

}

create_template $1
