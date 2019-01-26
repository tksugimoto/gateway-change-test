const http = require('http');

const HTTP_PORT = 80;

const currentTime = () => {
    const date = new Date();
    const h = date.getHours();
    const m = date.getMinutes();
    const s = date.getSeconds();
    const ms = date.getMilliseconds();
    return `${h}:${m}:${s}.${ms}`;
};

const log = text => {
    console.info(`[${currentTime()}] ------------- ${text} -------------`);
};

const httpServer = http.createServer();

httpServer.on('request', (req, res) => {
    log(`http://${req.headers.host}${req.url}`);
    console.log(`    from : ${req.socket.remoteAddress}:${req.socket.remotePort}`);
    console.log(`    to   : ${req.socket.localAddress}:${req.socket.localPort}`);
    res.writeHead(200, {
        'Content-Type': 'text/plain',
    });
    res.end('Hello World\n');
});

httpServer.listen(HTTP_PORT, '0.0.0.0');
