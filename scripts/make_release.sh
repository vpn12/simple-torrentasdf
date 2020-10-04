#!/bin/bash
__dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__file="${__dir}/$(basename "${BASH_SOURCE[0]}")"
__base="$(basename ${__file} .sh)"
__root="$(cd "$(dirname "${__dir}")" && pwd)" # <-- change this as it depends on your app

BIN=cloud-torrent
GITVER=$(git describe --tags)

OS=""
ARCH=""
EXESUFFIX=""
PKGCMD="gzip"

for arg in "$@"; do
case $arg in
	386)
		GOARCH=386
		;;
	windows)
		OS=windows
		EXESUFFIX=.exe
		;;
	xz)
		PKGCMD=xz
    ;;
	nozip)
		PKGCMD=
		;;
esac
done


if [[ -z $OS ]]; then
  OS=$(go env GOOS)
fi

if [[ -z $ARCH ]]; then
  ARCH=$(go env GOARCH)
fi

pushd $__dir/..
BINFILE=${BIN}_${OS}_${ARCH}${SUFFIX} 
rm -fv ${BIN}_*
CGO_ENABLED=0 GOARCH=$ARCH GOOS=$OS go build -o ${BINFILE}${EXESUFFIX} -ldflags "-s -w -X main.VERSION=$GITVER"
if [[ ! -f ${BINFILE}${EXESUFFIX} ]]; then
  echo "Build failed. Check with error message above."
  exit 1
fi

if [[ ! -z $PKGCMD ]]; then
  ${PKGCMD} -v -9 -k ${BINFILE}${EXESUFFIX}
fi
