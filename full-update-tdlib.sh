#!/bin/bash
MYDIR="$(realpath $(dirname $0))"
TMP="$(mktemp -d)"

# https://unix.stackexchange.com/a/340156
# Init timer stuff
gettimer() {
  printf "%02d" $(($1 / 3600))
  printf "%02d" $((($1 / 60) % 60))
  printf "%02d\n" $(($1 % 60))
}
SECONDS=0

# Download TDLib and custom example
echo "| Downloading source code..."
git clone https://github.com/tdlib/td.git $TMP || exit 1
git clone https://github.com/HandyGram/tdlib-example.git $TMP/example/handygram || exit 1
cd "$TMP/example/handygram" || exit 1

DOWNLOAD_SECONDS=$SECONDS
DOWNLOAD_ELAPSED="$(gettimer $DOWNLOAD_SECONDS)"
SECONDS=0

# Check environment
echo "| Checking environment..."
./check-environment.sh || exit 1

ENV_SECONDS=$SECONDS
ENV_ELAPSED="$(gettimer $ENV_SECONDS)"
SECONDS=0

# Build OpenSSL and remove temporary files
echo "| Building OpenSSL..."
./build-openssl.sh || exit 1
rm -rf ./openssl-*

OSSL_SECONDS=$SECONDS
OSSL_ELAPSED="$(gettimer $OSSL_SECONDS)"
SECONDS=0

# Build TDLib package
echo "| Building TDLib..."
./build-tdlib.sh || exit 1

TD_SECONDS=$SECONDS
TD_ELAPSED="$(gettimer $TD_SECONDS)"
SECONDS=0

# Auto-update Handy TDLib
echo "| Updating Handy TDLib..."
cd $MYDIR || exit 1
./update-tdlib.sh $TMP/example/handygram/tdlib/tdlib.zip || exit 1

UPD_SECONDS=$SECONDS
UPD_ELAPSED="$(gettimer $UPD_SECONDS)"
SECONDS=0

# Remove building stuff
echo "| Removing build files..."
rm -rf $TMP
RM_SECONDS=$SECONDS
RM_ELAPSED="$(gettimer $RM_SECONDS)"
SECONDS=0

TOTAL_SECONDS=$(($DOWNLOAD_SECONDS + $ENV_SECONDS + $OSSL_SECONDS + $TD_SECONDS + $UPD_SECONDS + $RM_SECONDS))
TOTAL_ELAPSED="$(gettimer $TOTAL_SECONDS)"

# Print stats
echo \
"Successfully updated Handy TDLib.

Update steps duration:
  * Downloading source code: $DOWNLOAD_ELAPSED
  * Checking environment: $ENV_ELAPSED
  * Building OpenSSL: $OSSL_ELAPSED
  * Building TDLib: $TD_ELAPSED
  * Updating TDLib: $UPD_ELAPSED
  * Removing build files: $RM_SECONDS

Total: $TOTAL_ELAPSED"
