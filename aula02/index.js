//biblioteca do node para gerenciamento de requests e responses
const http = require('http');
const produto = require('./produto');
const cliente = require('./cliente');
const categoria = require('./categoria');

// produto.cadastrar();
// cliente.cadastrar();
// categoria.cadastrar();

function recepcao(req, res) {
    if (req.url === '/clientes') {
        res.end(cliente.listar());
        return;
    } 

    if (req.url === '/produtos') {
        res.end(produto.listar());
        return;
    } 
}

http.createServer(recepcao).listen(8000);