#!/bin/sh

rm -rf .next
rm artifacts/*
mkdir -p artifacts

./node_modules/.bin/next build

cp .next/build-manifest.json ./artifacts/build-manifest.json
cp .next/routes-manifest.json ./artifacts/routes-manifest.json
cp .next/server/pages-manifest.json ./artifacts/pages-manifest.json
