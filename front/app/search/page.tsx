"use client";

import axios from "axios";

import { useSearchParams } from "next/navigation";

import { RestCard } from "@/service-components/RestCard/RestCard";

import Htag from "@/service-components/Htag/Htag";

import styles from "../../components/RestaurantMenu/RestaurantMenu.module.css";

import {
  CardData,
  RestaurantProducts,
} from "@/service-components/RestCard/RestCard.props";
import { useEffect, useState } from "react";
import Link from "next/link";

// getting products data
async function gettingAllProducts() {
  const response = await axios.get("http://localhost:3001/products");
  const data: RestaurantProducts[] = response.data;
  return data;
  // setter(data);
}
//

// getting restaurants data
async function gettingAllRestaurants() {
  const response = await axios.get("http://localhost:3001/data");
  const data: CardData[] = response.data;
  return data;
}
//

// checking data has request (checking restaurants title and products title)
function checkingRestaurants(arr: CardData[], query: string) {
  const buff: CardData[] = [];

  for (let i = 0; i < arr.length; i++) {
    if (arr[i].product_name.toLowerCase().includes(query.toLowerCase())) {
      buff.push(arr[i]);
    }
  }

  return buff;
}

function checkingProducts(arr: RestaurantProducts[], query: string) {
  const buff: RestaurantProducts[] = [];

  for (let i = 0; i < arr.length; i++) {
    if (arr[i].product_title.toLowerCase().includes(query.toLowerCase())) {
      buff.push(arr[i]);
    }
  }

  return buff;
}
//

export default function SearchBlock() {
  const textRequest = useSearchParams().get("query");

  const [restaurants, setRestaurants] = useState<CardData[]>([]);
  const [products, setProducts] = useState<RestaurantProducts[]>([]);

  let arr1: RestaurantProducts[] = [];
  let arr2: CardData[] = [];

  gettingAllProducts().then((res) => (arr1 = [...res]));

  gettingAllRestaurants().then((res) => (arr2 = [...res]));

  useEffect(() => {
    const timer = setTimeout(() => {
      setProducts([...checkingProducts(arr1, textRequest!)]);
      setRestaurants([...checkingRestaurants(arr2, textRequest!)]);
    }, 800);

    return () => clearTimeout(timer);
  }, []);

  return (
    <div className="container">
      <div className="row">
        {restaurants.length !== 0 && (
          <>
            <Htag tag="h2">Рестораны:</Htag>

            {restaurants.map((e: CardData, idx: number) => {
              return (
                <RestCard
                  id={e.id}
                  picture={e.picture}
                  product_name={e.product_name}
                  rating={e.rating}
                  reviews={e.reviews}
                  event={e.event}
                  delivery_time={e.delivery_time}
                  key={idx}
                ></RestCard>
              );
            })}
          </>
        )}
      </div>
      <div className="row">
        {products.length !== 0 && (
          <>
            <Htag tag="h2">Продукты:</Htag>
            {products.map((e: RestaurantProducts, idx: number) => {
              return (
                <div
                  className="col-xxl-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12"
                  style={{ marginBottom: 12 }}
                  key={idx}
                >
                  <div className={styles.good_wrapper}>
                    <div className={styles.good_picture_wrapper}>
                      <img src={e.picture} alt="good-picture" />
                    </div>
                    <div className={styles.good_descrption}>
                      <div className={styles.good_description_price_title}>
                        {e.price}
                      </div>
                      <div className={styles.good_description_title}>
                        {e.product_title}
                      </div>
                      <div className={styles.good_description_weight}>
                        {e.weight}
                      </div>
                    </div>
                    <div className={styles.add_good_to_list_wrapper}>
                      <div className={styles.to_restaurant_link}>
                        <Link href={`/${e.id}`}>Перейти к ресторану</Link>
                      </div>
                    </div>
                  </div>
                </div>
              );
            })}
          </>
        )}
      </div>
    </div>
  );
}
