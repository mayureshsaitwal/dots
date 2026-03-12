#!/usr/bin/env bash

fusermount -uq ~/.cache/flutter_sdk
rm -rf ~/.cache/{flutter_sdk,flutter_local}
