export interface DishInterface {
  price: string;
  picture: string;
  product_title: string;
  weight: string;
  restaurant?: string;
  counter: number;
}

export function getSum(productsArray: DishInterface[]): string {
  let sum = 0;

  for (let i = 0; i < productsArray.length; i++)
    sum +=
      parseFloat(productsArray[i].price.replace(/,/g, ".")) *
      productsArray[i].counter;

  return sum.toFixed(2);
}
