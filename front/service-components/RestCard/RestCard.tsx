import styles from "./RestCard.module.css";
import "./RestCard.css";
import Link from "next/link";

import { CardData } from "./RestCard.props";
import Htag from "../Htag/Htag";

export const RestCard = ({
  id,
  picture,
  product_name,
  rating,
  reviews,
  event,
  delivery_time,
}: CardData): JSX.Element => {
  return (
    <div className="col-md-6 col-lg-4 col-xxl-3">
      <div className={styles.restCard}>
        <Link href={`/${id}`}>
          <div className={styles.main_inf}>
            <div className={styles.picture_block}>
              <img src={picture} alt="restaurant" />
              <div className={styles.picture_bonus_wrapper}>
                <div className={styles.picture_bonus}>{event}</div>
              </div>
              <div className={styles.delivery_time_wrapper}>
                <div className={styles.delivery_time_text}>{delivery_time}</div>
              </div>
            </div>
            <div className={styles.text_data}>
              <Htag tag="h3">{product_name}</Htag>
              <div className={styles.detailed_inf}>
                <div className={styles.star_wrapper}>
                  <svg
                    className="StarIcon_root"
                    viewBox="0 0 16 16"
                    fill="none"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      fill="#FAC220"
                      d="M7.552.908a.5.5 0 0 1 .896 0l2.08 4.216a.5.5 0 0 0 .377.273l4.652.676a.5.5 0 0 1 .277.853l-3.366 3.281a.5.5 0 0 0-.144.443l.795 4.633a.5.5 0 0 1-.726.527l-4.16-2.188a.5.5 0 0 0-.466 0l-4.16 2.188a.5.5 0 0 1-.726-.527l.795-4.633a.5.5 0 0 0-.144-.443L.166 6.926a.5.5 0 0 1 .277-.853l4.652-.676a.5.5 0 0 0 .376-.273L7.551.908z"
                    ></path>
                  </svg>
                </div>
                <span className={styles.text}>{rating}</span>
                <span className={styles.text}>{reviews}</span>
              </div>
            </div>
          </div>
          <div className={styles.bonus}>
            <div className={styles.bonus_picture}>
              <img
                src="https://avatars.mds.yandex.net/get-bunker/128809/8a437d76ad8ef449df0d4a09b3d3fcc045abd915/orig"
                alt="delivery"
              />
            </div>
            <div className={styles.bonus_text}>{event}</div>
          </div>
        </Link>
      </div>
    </div>
  );
};
