## Tech stack:

MySQL database (phpmyadmin), Next TS + React TS, Node JS + Express JS, Bootstrap

## Where I get information about YandexEda's restaurants and products?

First of all I created my own parser, using JavaScript, that collected everyting about each restaurant from page and put it into JSON file.
After this manipulation I put all this data to MySQL database using loop and Express js and got something like this:

![restaurant database](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/5813d8da-2a92-48c6-9b66-55e85996d115)

### Parser:

![parser](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/64c45fa2-f41e-43cd-88b0-b01a6ccf1113)

## Connecting products table with restaurants table by one-to-many relationship

This is so easy: we just take restaurant id and connects it with each product id. In the end we got something like this:

![relationship](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/971c77ae-bd86-4a76-a1c5-317bc6d3849f)

## Creating basket table to store products that user have chosen:

### Table fields:
(all this fields has varchar type)
#### id - to store id of product to delete it by its id in future
#### price - to store price of product
#### picture - to store picture's link
#### product_title - to store product name
#### weight - to store its weight or volume
#### restaurant - to store name of restaurant
#### counter - to store number of product that user want

## Getting Started

### Run the database server:
Run the local server to open PhpMyAdmin with your browser (In my case I use XAMPP control panel).

Link to download XAMPP [XAMPP](https://www.apachefriends.org/)

### Starting server:
Open app and turn on Apache and MySQL buttons:

![buttons to turn on](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/dd03fb85-1d7b-433b-8328-ff7484729974)

Open [PhpMyAdmin](http://localhost/phpmyadmin/index.php) with your browser to see the result.

### Importing database to PhpMyAdmin:
Download sql file from database-sql-file folder and import it

### Run the development server:

```bash
npm run dev
# or
yarn dev
# or
pnpm dev
```

Open [http://localhost:3000](http://localhost:3000) with your browser to see the result.

## Product screenshots:

### PC version:

#### Welcome (main) page:
![main](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/0f3018b1-0742-48ce-85df-7d02ba2f00e6)

#### Restaurant products: 
![products](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/49113d1b-e621-4b30-8d02-947de495801f)

#### Restaurant products with basket:
![basket](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/1b3be6d4-c2d7-464e-bc3b-c8ad7aaa2c90)

#### Filter restaurants by category:
![filtering by category](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/a1864a9f-520c-47b2-b5fc-e56ed577150e)

#### Search by name: 
![searcher](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/1120e800-3e55-4546-a7a1-3821975f2a19)

### Mobile version:

#### Mobile welcome (main) page:
![mobile main](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/25fd4bae-7529-416f-9abb-f0632c7c275b)

#### Mobile restaurant products: 
![mobile restaurant products](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/b7628d79-69bd-419f-b508-382d5e1cd6a2)

#### Mobile basket:
![mobile basket](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/5959ac91-11e9-4e54-a6cb-2b6b30349ab5)





