## Tech stack:

MySQL database (phpmyadmin), Next TS + React TS, Node JS + Express JS, Bootstrap

## Where I get information about YandexEda's restaurants and products?

First of all I created my own parser, using JavaScript, that collected everyting about each restaurant from page and put it into JSON file.
After this manipulation I put all this data to MySQL database using loop and Express js and got something like this:

![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/e2102de1-493f-4398-9e38-1c56570bceab)

### Parser:

![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/54c5d62e-ca31-41d8-9419-a8a6edeb9dc7)

## Connecting products table with restaurants table by one-to-many relationship

This is so easy: we just take restaurant id and connects it with each product id. In the end we got something like this:

![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/23c2bf6b-f565-4a80-b7d8-8f57333b6591)

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

![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/23bf8433-1544-4c79-a785-7b32e9e761e1)

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
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/d1c12a7f-b9ad-4349-8121-b336587ea268)

#### Restaurant products: 
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/ccad35ad-d3cf-4d8c-816a-40a51578017a)

#### Restaurant products with basket:
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/35698ae8-46d3-4d00-9ef6-dd72e91fd12b)

#### Filter restaurants by category:
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/faafb2d5-d0bb-4ae5-9acf-d8b279cc7055)

#### Search by name: 
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/b1dec91d-40bb-430b-ba2c-8e8656f19a55)

### Mobile version:

#### Mobile welcome (main) page:
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/57f1bfbf-6e5d-47dd-bdbc-93788f9b3d50)

#### Mobile restaurant products: 
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/2fc1b820-727d-420a-ad8d-500f959b891f)

#### Mobile basket:
![image](https://github.com/b1on1kkk/YandexEda-webpage/assets/114521829/362caca9-4fd6-483e-8df2-5bc0f806f626)





