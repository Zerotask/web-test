const express = require('express');
const app = express();
const port = 14788;

// Start the web server
app.listen(port, () => console.log(`[Express] Running app on http://localhost:${port}`));

/**
 * @endpoint GET /
 */
app.get('/', (request, response) => {
    response.json('Hello from NodeJS!');
});

/**
 * A simple JSON response
 * 
 * @endpoint GET /products
 */
app.get('/products', (request, response) => {
    // With TS you could use an interface instead of V's struct
    // In JS you could use a schema package instead
    const products = [
        {id: 1, name: 'Coffee machine', price: 299.99},
        {id: 2, name: 'Playstation 5', price: 499.99}
    ];

    response.json(products);
});

/**
 * A simple addition
 * 
 * @endpoint GET /calculators/add/:value1/:value2
 */
app.get('/calculators/add/:value1/:value2', (request, response) => {
    response.json(parseInt(request.params.value1) + parseInt(request.params.value2));
})

/**
 * A simple multiplication
 * 
 * @endpoint GET /calculators/multiply/:value1/:value2
 */
app.post('/calculators/multiply/:value1/:value2', (request, response) => {
    response.json(parseInt(request.params.value1) * parseInt(request.params.value2));
})