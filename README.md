# Introduction
This repo is meant as a little comparison between NodeJS + Express and the V language with its own web framework Vweb.

## Testing
There are 4 endpoints defined:
- GET `/`
- GET `/products`
- GET `/calculators/add/:value1/:value2`
- POST `/calculators/multiply/:value1/:value2`

### V
Run `v run .\src\v\main.v`

### JS / NodeJS
Run `node .\src\js\main.js`