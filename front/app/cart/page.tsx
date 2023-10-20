"use client";

import { useEffect, useState } from "react";

import Link from "next/link";
import style from "./cart.module.css";

import axios from "axios";

import Htag from "@/service-components/Htag/Htag";
import { DishInterface, getSum } from "@/service/basketSumCalculation";
import Basket from "@/service-components/Basket/Basket";

async function getDataFromBasket(
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>
) {
  const response = await axios.get("http://localhost:3001/basket");
  const gettingData: DishInterface[] = response.data;

  setter(gettingData);
}

async function removeAll(
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>
) {
  await axios.delete("http://localhost:3001/basket/remove-all");
  setter([]);

  localStorage.removeItem("history_restaurant");
  localStorage.removeItem("restaurantId");
}

export default function BasketCart() {
  const [basketData, setBasketData] = useState<DishInterface[]>([]);

  useEffect(() => {
    getDataFromBasket(setBasketData);
  }, []);

  const totalPrice = getSum(basketData);

  return (
    <>
      <div className={style.mobile_wrapper_header}>
        <Link href="/">
          <button className={style.mobile_back_to_all_restaurants}>
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              className="UiKitUiKitIcon_m UiKitUiKitIcon_root"
            >
              <path
                fillRule="evenodd"
                clipRule="evenodd"
                d="m7.8 11 5.246-5.246a.5.5 0 0 0 0-.708l-.692-.692a.5.5 0 0 0-.708 0L4 12l7.646 7.646a.5.5 0 0 0 .708 0l.692-.692a.5.5 0 0 0 0-.708L7.8 13h11.7a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5H7.8Z"
                fill="currentColor"
              ></path>
            </svg>
          </button>
        </Link>

        {basketData.length !== 0 && (
          <div className={style.mobile_header_title}>
            {basketData[0].restaurant}
          </div>
        )}

        {basketData.length !== 0 && (
          <div
            className={style.remove_mobile_basket}
            onClick={() => removeAll(setBasketData)}
          >
            <svg
              width="1em"
              height="1em"
              viewBox="0 0 24 24"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
              className="UiKitUiKitIcon_m UiKitUiKitIcon_root MobileCartPageHeader_icon"
              data-testid="clear-cart-button"
            >
              <path
                fillRule="evenodd"
                clipRule="evenodd"
                d="M12.66 1.5h-1.32a4.5 4.5 0 0 0-1.92.27c-.44.18-.8.45-1.09.82-.29.37-.5.75-.78 1.77L7.37 5H5a1 1 0 0 0 0 2h.5l.84 12.67A2.5 2.5 0 0 0 8.84 22h6.32a2.5 2.5 0 0 0 2.5-2.33L18.5 7h.5a1 1 0 1 0 0-2h-2.37l-.18-.64c-.29-1.02-.49-1.4-.78-1.77a2.7 2.7 0 0 0-1.09-.82 4.5 4.5 0 0 0-1.92-.27Zm1.9 3.5-.03-.09c-.2-.72-.3-.9-.43-1.07a.7.7 0 0 0-.29-.22c-.2-.09-.4-.12-1.15-.12h-1.32c-.75 0-.95.03-1.15.12a.7.7 0 0 0-.3.22c-.13.17-.21.35-.42 1.07L9.45 5h5.1Zm1.94 2h-9l.84 12.53a.5.5 0 0 0 .5.47h6.32a.5.5 0 0 0 .5-.47L16.5 7ZM9.4 9.63a.85.85 0 0 1 1.7-.06l.27 7.8a.85.85 0 1 1-1.7.06l-.27-7.8Zm4.38-.88a.85.85 0 0 0-.88.82l-.27 7.8a.85.85 0 1 0 1.7.06l.27-7.8a.85.85 0 0 0-.82-.88Z"
                fill="currentColor"
              ></path>
            </svg>
          </div>
        )}
      </div>

      <div className={style.main_mobile_basket_block}>
        {basketData.length !== 0 && (
          <div className={style.main_mobile_basket_title}>
            <Htag tag="h3">Заказ</Htag>
          </div>
        )}

        <div className={style.main_mobile_basket_root}>
          <div className={style.main_mobile}>
            <div className={style.main_mobile_basket}>
              <Basket
                basketData={basketData}
                setBasketData={setBasketData}
              ></Basket>
            </div>
            {basketData.length !== 0 && (
              <div className={style.mobile_basket_payment}>
                <button className={style.basket_footer_total_price}>
                  <div className={style.basket_footer_total_price_wrapper}>
                    <div className={style.title}>Верно, к оплате</div>
                    {parseInt(totalPrice) < 15 ? (
                      <div className={style.price}>
                        {(parseFloat(totalPrice) + 5.6 + 0.89).toFixed(2)} руб.
                      </div>
                    ) : (
                      <div className={style.price}>
                        {(parseFloat(totalPrice) + 0.89).toFixed(2)} руб.
                      </div>
                    )}
                  </div>
                </button>
              </div>
            )}
          </div>
        </div>
      </div>
    </>
  );
}
