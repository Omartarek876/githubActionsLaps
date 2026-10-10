#!/usr/bin/env bash
set -e

expected_default="Hello, world!"
expected_alice="Hello, Alice!"
expected_omar="Hello, Omar!"

actual_default=$(node ./app.js)
actual_alice=$(node ./app.js Alice)
actual_omar=$(node ./app.js Omar)

if [ "$actual_default" != "$expected_default" ]; then
  echo "Default greeting failed: expected '$expected_default', got '$actual_default'"
  exit 1
fi

if [ "$actual_alice" != "$expected_alice" ]; then
  echo "Alice greeting failed: expected '$expected_alice', got '$actual_alice'"
  exit 1
fi

if [ "$actual_omar" != "$expected_omar" ]; then
  echo "Omar greeting failed: expected '$expected_omar', got '$actual_omar'"
  exit 1
fi

echo "All tests passed"
