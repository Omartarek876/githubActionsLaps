#!/usr/bin/env bash
set -e

node <<'NODE'
const assert = require('node:assert/strict');
const { greet } = require('./app.js');

assert.equal(greet(), 'Hello, world!');
assert.equal(greet('Alice'), 'Hello, Alice!');
assert.equal(greet('Omar'), 'Hello, Omar!');

console.log('All tests passed');
NODE
