
function greet(name) {
    if (!name || !name.trim()) {
        return "Hello, Guest!";
    }

    return `Hello, ${name.trim()}!`;
}

if (require.main === module) {
    console.log(greet("omar tarek ibrahim"));
}

module.exports = { greet };
