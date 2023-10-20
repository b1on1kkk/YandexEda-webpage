"use client";

import styles from "./Basket.module.css";

import axios from "axios";

interface DishInterface {
  id?: number;
  price: string;
  picture: string;
  product_title: string;
  weight: string;
  restaurant?: string;
  counter: number;
}

interface BasketSchema {
  basketData: DishInterface[];
  setBasketData: React.Dispatch<React.SetStateAction<DishInterface[]>>;
}

// handleDelete - function that deletes data from database if product counter = 1, otherwise - substract
const handleDelete = async (
  id: number,
  amount: number,
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>
) => {
  if (amount === 1) {
    const response = await axios.delete("http://localhost:3001/basket", {
      data: { id: id },
    });

    if (response.status === 200) {
      const response = await axios.get("http://localhost:3001/basket");
      const buffResp: DishInterface[] = response.data;

      if (buffResp.length === 0) localStorage.removeItem("history_restaurant");

      setter(response.data);
    }

    return;
  }

  handleRewriteCounter(id, amount, setter, "decr");
};

// handleRewriteCounter - function that updates counter by it's id (increment or decrement)
const handleRewriteCounter = async (
  id: number,
  data: number,
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>,
  status: "inc" | "decr"
) => {
  if (status === "decr") data -= 1;
  else data += 1;

  const response = await axios.post("http://localhost:3001/basket/update", {
    id,
    data,
  });

  if (response.status === 200) {
    const response = await axios.get("http://localhost:3001/basket");
    setter(response.data);
  }
};

const Basket: React.FC<BasketSchema> = ({ basketData, setBasketData }) => {
  return (
    <>
      {basketData.length === 0 ? (
        <div className={styles.empty_basket_warning}>
          <img
            src={
              "https://avatars.mds.yandex.net/get-bunker/61205/a11b38948b6d328e2f739d602fa36b15b2680ba8/svg"
            }
            alt="empty-basket"
          />
          <div className={styles.basket_title}>В вашей корзине пока пусто</div>
        </div>
      ) : (
        <>
          {basketData.map((e: DishInterface, idx: number) => {
            return (
              <div className={styles.basket_wrapper} key={idx}>
                <div className={styles.basket_product_card}>
                  <div className={styles.basket_picture_wrapper}>
                    <div className={styles.basket_picture}>
                      <img src={e.picture} alt="" />
                    </div>
                  </div>
                  <div className={styles.basket_product_title_wrapper}>
                    <div className={styles.basket_product_title}>
                      {e.product_title}
                    </div>
                    <div className={styles.basket_price_wrapper}>
                      <div className={styles.basket_price}>{e.price}</div>
                      <div className={styles.basket_weight}>{e.weight}</div>
                    </div>
                  </div>
                  <div className={styles.basket_product_amount_wrapper}>
                    <div className={styles.basket_product_amount}>
                      <button
                        className={styles.less}
                        onClick={() =>
                          handleDelete(e.id!, e.counter, setBasketData)
                        }
                      >
                        <svg
                          width="1em"
                          height="1em"
                          viewBox="0 0 24 24"
                          fill="none"
                          xmlns="http://www.w3.org/2000/svg"
                          className="UiKitUiKitIcon_m UiKitUiKitIcon_root UiKitCounter_icon"
                        >
                          <path
                            fillRule="evenodd"
                            clipRule="evenodd"
                            d="M6 12a1 1 0 0 0 1 1h10a1 1 0 1 0 0-2H7a1 1 0 0 0-1 1Z"
                            fill="currentColor"
                          ></path>
                        </svg>
                      </button>
                      <b className={styles.amount}>{e.counter}</b>
                      <button
                        className={styles.more}
                        onClick={() =>
                          handleRewriteCounter(
                            e.id!,
                            e.counter,
                            setBasketData,
                            "inc"
                          )
                        }
                      >
                        <svg
                          width="1em"
                          height="1em"
                          viewBox="0 0 24 24"
                          fill="none"
                          xmlns="http://www.w3.org/2000/svg"
                          className="UiKitUiKitIcon_m UiKitUiKitIcon_root UiKitCounter_icon"
                        >
                          <path
                            fillRule="evenodd"
                            clipRule="evenodd"
                            d="M12 6a1 1 0 0 0-1 1v4H7a1 1 0 1 0 0 2h4v4a1 1 0 1 0 2 0v-4h4a1 1 0 1 0 0-2h-4V7a1 1 0 0 0-1-1Z"
                            fill="currentColor"
                          ></path>
                        </svg>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            );
          })}
          <div className={styles.pay_for_service_working}>
            <div className={styles.pay_text_wrapper}>
              <div className={styles.text}>Работа сервиса</div>
              <div className={styles.price}>0,89руб.</div>
            </div>
          </div>
        </>
      )}
    </>
  );
};

export default Basket;
