import { RestaurantProducts } from "@/service-components/RestCard/RestCard.props";

import RestaurantMenu from "@/components/RestaurantMenu/RestaurantMenu";

import {
  getRestaurantMenu,
  Props,
  getData,
  BinarySearchData,
} from "@/service/gettingData";
import { CardData } from "@/service-components/RestCard/RestCard.props";

export async function generateMetadata({ params: { shop } }: Props) {
  const getRestaurants: CardData[] = await getData();

  return {
    title: `${decodeURIComponent(
      BinarySearchData(getRestaurants, parseInt(shop))
    )} — заказать доставку от 30 минут в Минске`,
  };
}

export default async function Shop({ params: { shop } }: Props) {
  const data: RestaurantProducts[] = await getRestaurantMenu({
    params: { shop },
  });

  const getRestaurants: CardData[] = await getData();

  return (
    <RestaurantMenu shop={shop} data={data} getRestaurants={getRestaurants} />
  );
}
