export interface RestaurantProducts {
  id: number;
  price: string;
  title_picture: string;
  picture: string;
  product_title: string;
  weight: string;
  restaurant: string;
  counter: number;
}

export interface CardData {
  id: number;
  picture: string;
  product_name: string;
  rating: string;
  reviews: string;
  event: string;
  delivery_time: string;
  category?: string | null;
}
