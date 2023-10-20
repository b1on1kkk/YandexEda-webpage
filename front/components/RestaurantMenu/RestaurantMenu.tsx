"use client";

import styles from "./RestaurantMenu.module.css";

import Link from "next/link";
import { useEffect, useState } from "react";

import axios from "axios";

import Htag from "../../service-components/Htag/Htag";
import BusketAdderButton from "../../service-components/AddToBusketButton/button";
import Basket from "../../service-components/Basket/Basket";
import {
  CardData,
  RestaurantProducts,
} from "../../service-components/RestCard/RestCard.props";
import { BinarySearchData } from "@/service/gettingData";
import { DishInterface, getSum } from "@/service/basketSumCalculation";

interface RestaurantMenuProps {
  shop: string;
  data: RestaurantProducts[];
  getRestaurants: CardData[];
}

// gettin all data from database, but:
// if basket is not empty and restaurants are different - do not show anything, otherwise - show basket data
async function getBasketDataFromDatabase(
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>,
  restaurant?: string
) {
  const response = await axios.get("http://localhost:3001/basket");
  const gettingData: DishInterface[] = response.data;

  if (gettingData.length === 0) {
    setter(gettingData);
    return;
  }

  if (restaurant === gettingData[0].restaurant) setter(gettingData);
}

// removing everything from basket database
async function removeAll(
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>
) {
  await axios.delete("http://localhost:3001/basket/remove-all");
  setter([]);

  localStorage.removeItem("history_restaurant");
  localStorage.removeItem("restaurantId");
}

// function that get data from bakset
async function gettingBasketData() {
  const response = await axios.get("http://localhost:3001/basket");
  return response.data;
}

// function that deletes all data from basket when using clicked "Продолжить" in modal menu
async function removeAllFromPreviousRestaurant(
  setter: React.Dispatch<React.SetStateAction<DishInterface[]>>,
  product: DishInterface | undefined,
  basketSetter: React.Dispatch<React.SetStateAction<DishInterface[]>>,
  id: string
) {
  // deling data
  await axios.delete("http://localhost:3001/basket/remove-all");
  // set current busket to zero array
  setter([]);

  // removing extra data in localStorage (best variant is to use cookies, but I can't ¯\_(ツ)_/¯)
  localStorage.removeItem("history_restaurant");
  localStorage.removeItem("restaurantId");

  // posing new data (product in which user clicked), product parameter i got from another component (BusketAdderButton)
  axios.post("http://localhost:3001/basket", product).catch((error) => {
    console.log(error);
  });

  // settnig extra data in localStorage
  localStorage.setItem("history_restaurant", product!.restaurant!);
  localStorage.setItem("restaurantId", id);

  // and using useState hook to set it
  setTimeout(() => {
    gettingBasketData().then((response) => basketSetter(response));
    return;
  }, 500);
}

const RestaurantMenu: React.FC<RestaurantMenuProps> = ({
  shop,
  data,
  getRestaurants,
}) => {
  const [basketData, setBasketData] = useState<DishInterface[]>([]);
  const [warningModal, setWarningModal] = useState<boolean>(false);
  const [chosenProduct, setChosenProduct] = useState<DishInterface>();

  useEffect(() => {
    getBasketDataFromDatabase(
      setBasketData,
      BinarySearchData(getRestaurants, parseInt(shop))
    );
  }, []);

  const totalPrice = getSum(basketData);

  return (
    <div className={styles.layout_container}>
      {data.length === 0 ? (
        <h1>There is no data ¯\_(ツ)_/¯</h1>
      ) : (
        <div className={styles.layout_root}>
          {/*  */}
          <aside className={styles.aside_menu}>
            <div className={styles.left_side_menu}>
              <Link href="/">
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
                <span>Все рестораны</span>
              </Link>
            </div>
          </aside>
          {/*  */}

          {/*  */}
          <div className={styles.main_content_layout}>
            <div className={styles.main_restaurant_picture}>
              <div className={styles.picture_wrapper_block}>
                <img src={data[0].title_picture} alt="header_picture" />
              </div>
              <div className={styles.picture_gradient}></div>
              <h1 className={styles.unique_h1_tag}>
                {BinarySearchData(getRestaurants, parseInt(shop))}
              </h1>
              <div className={styles.menu_buttons}>
                <button>
                  <svg
                    width="1em"
                    height="1em"
                    viewBox="0 0 24 24"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                    className="UiKitUiKitIcon_xl UiKitUiKitIcon_root"
                  >
                    <path
                      d="m12 16-5.878 4.09 2.074-6.854L2.489 8.91l7.16-.146L12 2l2.351 6.764 7.16.146-5.707 4.326 2.074 6.854L12 16Z"
                      fill="currentColor"
                    ></path>
                  </svg>
                  <div className={styles.button_rating}>
                    <div className={styles.rating}>
                      {parseFloat(getRestaurants[parseInt(shop)].rating)
                        .toString()
                        .replace(/[^0-9.]/g, "")}
                    </div>
                    <div className={styles.reviews}>
                      {getRestaurants[parseInt(shop)].reviews.replace(
                        /[()]/g,
                        ""
                      )}
                    </div>
                  </div>
                </button>
              </div>
            </div>

            <div className={styles.mobile_return_to_restaurants}>
              <div className={styles.left_side_menu}>
                <Link href="/">
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
                  <span>Все рестораны</span>
                </Link>
              </div>
            </div>
            <div className={styles.main_content_layout_goods}>
              <div className={styles.bonus_block}>
                <div className={styles.bonus_block_background}></div>
                <div className={styles.bonus_block_icon_wrapper}>
                  <span className={styles.bonus_figure}>
                    <svg
                      width="48"
                      height="47"
                      viewBox="0 0 48 47"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="M11.7594 41.5647H16.0891C16.4937 41.5647 16.7567 41.6457 17.04 41.9492L20.1153 45.0042C22.7656 47.6546 25.2339 47.6343 27.8641 45.0042L30.9394 41.9492C31.2226 41.6457 31.5059 41.5647 31.8903 41.5647H36.2199C39.9426 41.5647 41.7028 39.8046 41.7028 36.0616V31.732C41.7028 31.3476 41.8242 31.0644 42.1074 30.7811L45.1624 27.7058C47.8128 25.0757 47.7926 22.6074 45.1624 19.9772L42.1074 16.8817C41.8242 16.5985 41.7028 16.3355 41.7028 15.9511V11.6214C41.7028 7.89874 39.9628 6.11833 36.2199 6.11833H31.8903C31.5059 6.11833 31.2226 6.01717 30.9394 5.73392L27.8641 2.67889C25.2339 0.028504 22.7656 0.028504 20.1153 2.67889L17.04 5.73392C16.777 6.01717 16.4937 6.11833 16.0891 6.11833H11.7594C8.03676 6.11833 6.27658 7.85828 6.27658 11.6214V15.9511C6.27658 16.3355 6.17542 16.5985 5.89217 16.8817L2.83715 19.9772C0.186757 22.6074 0.206989 25.0757 2.83715 27.7058L5.89217 30.7811C6.17542 31.0644 6.27658 31.3476 6.27658 31.732V36.0616C6.27658 39.7843 8.03676 41.5647 11.7594 41.5647Z"
                        fill="currentColor"
                      ></path>
                    </svg>
                  </span>
                  <span className={styles.another_bonus_figure}></span>
                </div>
                <div className={styles.bonus_text}>
                  <div className={styles.text_1}>Бесплатная доставка</div>
                  <div className={styles.text_2}>
                    действует на заказ от 15 руб
                  </div>
                </div>
              </div>

              <div className={styles.products_block}>
                {data.map((e: RestaurantProducts, idx: number) => {
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
                          <BusketAdderButton
                            currentDish={e}
                            restaurant={BinarySearchData(
                              getRestaurants,
                              parseInt(shop)
                            )}
                            setBasket={setBasketData}
                            restaurantId={shop}
                            setWarningModal={setWarningModal}
                            setChosenProduct={setChosenProduct}
                          />
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            </div>
          </div>
          {/*  */}
          <aside className={styles.basket}>
            <div className={styles.basket_root}>
              <div className={styles.basket_content}>
                <div className={styles.basket_title}>
                  <Htag tag="h3">Корзина</Htag>
                  {basketData.length !== 0 && (
                    <div
                      className={styles.clear_basket_data}
                      onClick={() => removeAll(setBasketData)}
                    >
                      Очистить
                    </div>
                  )}
                </div>
                <div className={styles.basket_main_container}>
                  {/*  */}
                  <Basket
                    basketData={basketData}
                    setBasketData={setBasketData}
                  />
                  {/*  */}
                </div>
                <div className={styles.basket_footer_wrapper}>
                  <div className={styles.basket_footer}>
                    <div
                      className={styles.basket_icon}
                      style={{
                        backgroundImage:
                          'url("https://avatars.mds.yandex.net/get-bunker/50064/c67830a657bc747c110896b4d0ae15126f6a9bb8/svg")',
                      }}
                    ></div>
                    {parseInt(totalPrice) === 0 ? (
                      <div className={styles.basket_footer_text}>
                        Бесплатная доставка от 15 руб. · 20–35 мин
                      </div>
                    ) : parseInt(totalPrice) >= 15 ? (
                      <div className={styles.basket_footer_text}>
                        Бесплатная доставка
                      </div>
                    ) : (
                      <div>
                        <div className={styles.basket_delivery_price}>
                          Доставка: 5,60 руб
                        </div>
                        <div className={styles.basket_footer_text}>
                          До бесплатной доставки:{" "}
                          {(15 - parseFloat(totalPrice)).toFixed(2)}руб.
                        </div>
                      </div>
                    )}

                    <svg
                      width="1em"
                      height="1em"
                      viewBox="0 0 24 24"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                      className="UiKitUiKitIcon_s UiKitUiKitIcon_root NewCartFooterBottomBanner_iconInfo"
                      color="#9E9B98"
                    >
                      <circle
                        cx="12"
                        cy="12"
                        r="9"
                        stroke="currentColor"
                        strokeWidth="2"
                      ></circle>
                      <path
                        fillRule="evenodd"
                        clipRule="evenodd"
                        d="M13 8a1 1 0 1 1-2 0 1 1 0 0 1 2 0Zm.5 7a.5.5 0 0 1-.5-.5V10a.5.5 0 0 0-.5-.5H10v1h.5a.5.5 0 0 1 .5.5v3.5a.5.5 0 0 1-.5.5H10v1h4v-1h-.5Z"
                        fill="currentColor"
                      ></path>
                    </svg>
                  </div>
                  {basketData.length !== 0 && (
                    <button className={styles.basket_footer_total_price}>
                      <div className={styles.basket_footer_total_price_wrapper}>
                        <div className={styles.title}>Верно, к оплате</div>
                        {parseInt(totalPrice) < 15 ? (
                          <div className={styles.price}>
                            {(parseFloat(totalPrice) + 5.6 + 0.89).toFixed(2)}{" "}
                            руб.
                          </div>
                        ) : (
                          <div className={styles.price}>
                            {(parseFloat(totalPrice) + 0.89).toFixed(2)} руб.
                          </div>
                        )}
                      </div>
                    </button>
                  )}
                </div>
              </div>
            </div>
          </aside>
        </div>
      )}
      {warningModal && (
        <div
          className={styles.modal_warining_text_wrapper}
          onClick={() => setWarningModal(false)}
        >
          <div className={styles.modal_warning_text}>
            <span className={styles.modal_warning_title}>
              Оформить заказ из ресторана{" "}
              {BinarySearchData(getRestaurants, parseInt(shop))}
            </span>
            <span className={styles.modal_warning_description}>
              Все ранее добавленные блюда из ресторанa{" "}
              {localStorage.getItem("history_restaurant")} будут удалены из
              корзины
            </span>
            <div className={styles.modal_warning_controls_wrapper}>
              <button
                className={styles.modal_warning_controls_cancel}
                onClick={() => setWarningModal(false)}
              >
                Отмена
              </button>
              <button
                className={styles.modal_warning_controls_upload}
                onClick={() =>
                  removeAllFromPreviousRestaurant(
                    setBasketData,
                    chosenProduct,
                    setBasketData,
                    shop
                  )
                }
              >
                Продолжить
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default RestaurantMenu;
