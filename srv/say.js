module.exports = class srv {
    hello(req) {
        return `Hello ${req.data.to}!`
    }
}