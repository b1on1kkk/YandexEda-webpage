import styles from "./homepage.module.css";

import Htag from "@/service-components/Htag/Htag";
import Navigation from "@/components/Navigation/navigation";
import { RestCard } from "@/service-components/RestCard/RestCard";
import { CardData } from "@/service-components/RestCard/RestCard.props";

import { getData } from "@/service/gettingData";

const show: { content: string; status: boolean }[] = [
  { content: "Все", status: true },
  { content: "Бургеры", status: false },
  { content: "Суши", status: false },
  { content: "Пицца", status: false },
  { content: "Вок", status: false },
  { content: "Паста", status: false },
  { content: "Завтраки", status: false },
  { content: "Грузия", status: false },
];

export default async function Home() {
  const data: CardData[] = await getData();

  return (
    <div className="container">
      <div className={styles.restaurants_title}>
        <Htag tag="h2">Рестораны</Htag>
      </div>
      <Navigation show={show}></Navigation>
      <div className="container">
        <div className="row">
          {data.map((e: CardData) => {
            return (
              <RestCard
                id={e.id}
                picture={e.picture}
                product_name={e.product_name}
                rating={e.rating}
                reviews={e.reviews}
                event={e.event}
                delivery_time={e.delivery_time}
              ></RestCard>
            );
          })}
        </div>
      </div>
    </div>
  );
}
