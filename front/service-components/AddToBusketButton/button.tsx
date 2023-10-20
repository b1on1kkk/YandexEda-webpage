"use client";

import styles from "./Button.module.css";
import { RestaurantProducts } from "../RestCard/RestCard.props";
import axios from "axios";

import { DishInterface } from "@/service/basketSumCalculation";

interface BusketAdderInterface {
  currentDish: RestaurantProducts;
  restaurant: string;
  setBasket: React.Dispatch<React.SetStateAction<DishInterface[]>>;
  restaurantId: string;
  setWarningModal: React.Dispatch<React.SetStateAction<boolean>>;
  setChosenProduct: React.Dispatch<
    React.SetStateAction<DishInterface | undefined>
  >;
}

async function gettingBasketData() {
  const response = await axios.get("http://localhost:3001/basket");
  return response.data;
}

const BusketAdderButton: React.FC<BusketAdderInterface> = ({
  currentDish,
  restaurant,
  setBasket,
  restaurantId,
  setWarningModal,
  setChosenProduct,
}): JSX.Element => {
  function busketHandler(dish: DishInterface) {
    const data = {
      price: dish.price,
      picture: dish.picture,
      product_title: dish.product_title,
      weight: dish.weight,
      restaurant: restaurant,
      counter: 1,
    };

    // setting extra data to localStorage, whick I'll use in RestautrantMenu component
    if (localStorage.getItem("history_restaurant") === null) {
      localStorage.setItem("history_restaurant", data.restaurant);
    }

    if (localStorage.getItem("restaurantId") === null) {
      localStorage.setItem("restaurantId", restaurantId);
    }
    //

    // if restaurants are differ, going out from this function and set special marks
    if (localStorage.getItem("history_restaurant") !== data.restaurant) {
      setWarningModal(true);
      setChosenProduct(data);
      return;
    }

    // otherwise set data into basket database
    axios.post("http://localhost:3001/basket", data).catch((error) => {
      console.log(error);
    });

    // and set it into useState hook
    setTimeout(() => {
      gettingBasketData().then((response) => setBasket(response));
      return;
    }, 500);
  }

  return (
    <button
      className={styles.busket_adder_button}
      onClick={() => {
        busketHandler(currentDish);
      }}
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
      <span>Добавить</span>
    </button>
  );
};

export default BusketAdderButton;
