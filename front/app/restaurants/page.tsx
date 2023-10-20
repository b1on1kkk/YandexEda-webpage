"use client";

import axios from "axios";

import { useSearchParams } from "next/navigation";
import { useEffect, useState } from "react";

import Navigation from "@/components/Navigation/navigation";
import { CardData } from "@/service-components/RestCard/RestCard.props";

import { RestCard } from "@/service-components/RestCard/RestCard";

let show: { content: string; status: boolean }[] = [
  { content: "Все", status: true },
  { content: "Бургеры", status: false },
  { content: "Суши", status: false },
  { content: "Пицца", status: false },
  { content: "Вок", status: false },
  { content: "Паста", status: false },
  { content: "Завтраки", status: false },
  { content: "Грузия", status: false },
];

async function getFilteredRestaurant(
  category: string,
  setter: React.Dispatch<React.SetStateAction<CardData[]>>
) {
  console.log(category);

  const res = await axios.get(
    `http://localhost:3001/restaurants?category=${category}`
  );

  const filteredRestaurants: CardData[] = res.data;

  setter(filteredRestaurants);
}

export default function Restaurants() {
  const categoryRequest = useSearchParams().get("category");
  const [data, setData] = useState<CardData[]>([]);

  useEffect(() => {
    getFilteredRestaurant(categoryRequest!, setData);
  }, [categoryRequest]);

  show = show.map((e) => {
    if (
      (categoryRequest === "burgers" && e.content === "Бургеры") ||
      (categoryRequest === "sushi" && e.content === "Суши") ||
      (categoryRequest === "pizza" && e.content === "Пицца") ||
      (categoryRequest === "wok" && e.content === "Вок")
    ) {
      return { ...e, status: true };
    }

    return { ...e, status: false };
  });

  return (
    <div className="container">
      <Navigation show={show}></Navigation>

      <div className="container">
        <div className="row">
          {data.map((e: CardData, idx) => {
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
        </div>
      </div>
    </div>
  );
}
