function greet(name = 'world') {
  return `Hello, ${name}!`;
}

function main() {
  const name = process.argv.slice(2).join(' ') || 'world';
  console.log(greet(name));
}

module.exports = {
  greet,
};

if (require.main === module) {
  main();
}
