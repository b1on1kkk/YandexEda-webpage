"use client";

import Link from "next/link";
import style from "./header.module.css";
import { useState } from "react";

import axios from "axios";

import { DishInterface, getSum } from "@/service/basketSumCalculation";

async function getBasketData(
  status: boolean,
  statusSetter: React.Dispatch<React.SetStateAction<boolean>>,
  basketSetter: React.Dispatch<React.SetStateAction<DishInterface[]>>
) {
  if (status) {
    statusSetter(false);
    return;
  }

  const response = await axios.get("http://localhost:3001/basket");
  const data: DishInterface[] = response.data;

  basketSetter(data);
  statusSetter(true);
}

export default function Header(): JSX.Element {
  const [inputData, setInputData] = useState<string>("");

  const [modalBasket, setModalBasket] = useState<boolean>(false);
  const [basket, setBasket] = useState<DishInterface[]>([]);

  const totalPrice = getSum(basket);

  return (
    <>
      <div className={style.header_wrapper}>
        <div className={style.header_content_wrapper}>
          {/*  */}
          <div className={style.header_content_left}>
            <div className={style.header_home_picture_wrapper}>
              <Link href="/">
                <span className={style.header_picture}></span>
              </Link>
            </div>

            {/*  */}
            <div className={style.header_search_container}>
              <div className={style.header_right_search_wrapper}>
                <div className={style.header_search_input}>
                  <div className={style.input}>
                    <div className={style.input_picture_wrapper}>
                      <svg
                        width="1em"
                        height="1em"
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                        className="UiKitUiKitIcon_m UiKitUiKitIcon_root UiKitSearchInput_icon"
                      >
                        <path
                          fillRule="evenodd"
                          clipRule="evenodd"
                          d="M4 11c0-3.859 3.141-7 7-7s7 3.141 7 7-3.141 7-7 7-7-3.141-7-7Zm18 11a1 1 0 0 0 0-1.414l-3.975-3.975A8.948 8.948 0 0 0 20 11c0-4.963-4.037-9-9-9s-9 4.037-9 9 4.037 9 9 9a8.948 8.948 0 0 0 5.611-1.975L20.586 22A1 1 0 0 0 22 22Z"
                          fill="currentColor"
                        ></path>
                      </svg>
                    </div>
                    <input
                      type="text"
                      value={inputData}
                      className={style.search_input}
                      onChange={(e) => setInputData(e.target.value)}
                      placeholder="Найти ресторан, блюдо или товар"
                    />
                    <button className={style.search_button}>
                      <Link href={`/search?query=${inputData}`}>Найти</Link>
                    </button>
                  </div>
                </div>
              </div>
              {/*  */}
            </div>
          </div>
          {/*  */}
          <div className={style.header_content_right_block}>
            <div className={style.header_language_changer_wrapper}>
              <div className={style.header_language_changer}>
                <svg
                  width="1em"
                  height="1em"
                  viewBox="0 0 25 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                  className="UiKitUiKitIcon_m UiKitUiKitIcon_root"
                >
                  <path
                    fillRule="evenodd"
                    clipRule="evenodd"
                    d="M12.5 2c5.523 0 10 4.477 10 10s-4.477 10-10 10-10-4.477-10-10 4.477-10 10-10Zm.002 18a.21.21 0 0 0 .077-.024c.06-.027.164-.089.303-.22.288-.27.638-.755.976-1.506.584-1.297 1.013-3.128 1.118-5.25h-4.952c.105 2.122.534 3.953 1.118 5.25.338.75.688 1.236.976 1.507.139.13.243.192.303.22.05.022.072.023.078.023h.003Zm-3.024-.59c-.804-1.62-1.343-3.876-1.456-6.41h-3.46a8.009 8.009 0 0 0 4.916 6.41ZM4.562 11h3.46c.113-2.534.652-4.79 1.456-6.41A8.008 8.008 0 0 0 4.562 11Zm10.96 8.41A8.008 8.008 0 0 0 20.438 13h-3.46c-.113 2.534-.652 4.79-1.456 6.41ZM20.438 11a8.008 8.008 0 0 0-4.916-6.41c.804 1.62 1.343 3.876 1.456 6.41h3.46Zm-7.94-7a.211.211 0 0 0-.077.024c-.06.027-.164.089-.303.22-.288.27-.638.755-.976 1.506-.584 1.297-1.013 3.128-1.118 5.25h4.952c-.105-2.122-.534-3.953-1.118-5.25-.338-.75-.688-1.236-.976-1.507a1.176 1.176 0 0 0-.303-.22.206.206 0 0 0-.078-.023h-.003Z"
                    fill="currentColor"
                  ></path>
                </svg>
                <div className={style.header_language_type}>Русский</div>
              </div>
            </div>
            <div
              className={style.basket_button_wrapper}
              onClick={() =>
                getBasketData(modalBasket, setModalBasket, setBasket)
              }
            >
              <span>
                <svg
                  width="1em"
                  height="1em"
                  viewBox="0 0 24 24"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                  className="UiKitUiKitIcon_m UiKitUiKitIcon_root DesktopHeader_icon"
                >
                  <path
                    fillRule="evenodd"
                    clipRule="evenodd"
                    d="m11 7.5 5.207-5.207A1 1 0 0 1 16.914 2H18.5l-4.125 5.5H23.5l-.288 1.295a1.22 1.22 0 0 1-1.19.955.488.488 0 0 0-.478.389l-1.713 8.267A2 2 0 0 1 17.872 20H6.128a2 2 0 0 1-1.958-1.594l-1.714-8.267a.488.488 0 0 0-.478-.389 1.22 1.22 0 0 1-1.19-.955L.5 7.5H11Zm-5.5 3h2.708l.542 7H7.012a.5.5 0 0 1-.494-.424L5.5 10.5Zm5.146 0h2.708l-.27 7h-2.167l-.271-7Zm7.854 0h-2.708l-.542 7h1.738a.5.5 0 0 0 .494-.424L18.5 10.5Z"
                    fill="currentColor"
                  ></path>
                </svg>
              </span>
            </div>
            <div className={style.basket_modal_mobile_button_wrapper}>
              <Link href="/cart">
                <div className={style.basket_modal_mobile_button}>
                  <span>
                    <svg
                      width="1em"
                      height="1em"
                      viewBox="0 0 24 24"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      className="UiKitUiKitIcon_m UiKitUiKitIcon_root DesktopHeader_icon"
                    >
                      <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="m11 7.5 5.207-5.207A1 1 0 0 1 16.914 2H18.5l-4.125 5.5H23.5l-.288 1.295a1.22 1.22 0 0 1-1.19.955.488.488 0 0 0-.478.389l-1.713 8.267A2 2 0 0 1 17.872 20H6.128a2 2 0 0 1-1.958-1.594l-1.714-8.267a.488.488 0 0 0-.478-.389 1.22 1.22 0 0 1-1.19-.955L.5 7.5H11Zm-5.5 3h2.708l.542 7H7.012a.5.5 0 0 1-.494-.424L5.5 10.5Zm5.146 0h2.708l-.27 7h-2.167l-.271-7Zm7.854 0h-2.708l-.542 7h1.738a.5.5 0 0 0 .494-.424L18.5 10.5Z"
                        fill="currentColor"
                      ></path>
                    </svg>
                  </span>
                </div>
              </Link>
            </div>

            <div className={style.header_account_button_wrapper}>
              <button className={style.header_account_button}>Войти</button>
            </div>
          </div>
          {/*  */}
        </div>
      </div>
      {modalBasket && (
        <div
          className={style.header_model_basket_window_wrapper}
          onClick={() => setModalBasket(false)}
        >
          <div className={style.header_model_basket_window}>
            <>
              {basket.length === 0 ? (
                <div className={style.empty_basket_warning}>
                  <img
                    src={
                      "https://avatars.mds.yandex.net/get-bunker/61205/a11b38948b6d328e2f739d602fa36b15b2680ba8/svg"
                    }
                    alt="empty-basket"
                  />
                  <div className={style.basket_title}>
                    В вашей корзине пока пусто
                  </div>
                </div>
              ) : (
                <>
                  <div className={style.main_modal_basket}>
                    {basket.map((e: DishInterface, idx: number) => {
                      return (
                        <div className={style.basket_wrapper} key={idx}>
                          <div className={style.basket_product_card}>
                            <div className={style.basket_picture_wrapper}>
                              <div className={style.basket_picture}>
                                <img src={e.picture} alt="" />
                              </div>
                            </div>
                            <div className={style.basket_product_title_wrapper}>
                              <div className={style.basket_product_title}>
                                {e.product_title}
                              </div>
                              <div className={style.basket_price_wrapper}>
                                <div className={style.basket_price}>
                                  {e.price}
                                </div>
                                <div className={style.basket_weight}>
                                  {e.weight}
                                </div>
                              </div>
                            </div>
                            <div className={style.modal_bakset_product_amount}>
                              {e.counter}
                            </div>
                          </div>
                        </div>
                      );
                    })}
                    <div className={style.pay_for_service_working}>
                      <div className={style.pay_text_wrapper}>
                        <div className={style.text}>Работа сервиса</div>
                        <div className={style.price}>0,89руб.</div>
                      </div>
                    </div>
                  </div>
                  <div className={style.link_to_restaurant_button}>
                    <Link href={`/${localStorage.getItem("restaurantId")}`}>
                      <button className={style.basket_footer_total_price}>
                        <div
                          className={style.basket_footer_total_price_wrapper}
                        >
                          <div className={style.title}>
                            Верно, к ресторану:{" "}
                            {localStorage.getItem("history_restaurant")}
                          </div>
                          {parseInt(totalPrice) < 15 ? (
                            <div className={style.price}>
                              {(parseFloat(totalPrice) + 5.6 + 0.89).toFixed(2)}{" "}
                              руб.
                            </div>
                          ) : (
                            <div className={style.price}>
                              {(parseFloat(totalPrice) + 0.89).toFixed(2)} руб.
                            </div>
                          )}
                        </div>
                      </button>
                    </Link>
                  </div>
                </>
              )}
            </>
          </div>
        </div>
      )}
    </>
  );
}
