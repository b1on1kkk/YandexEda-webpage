import styles from "./loading.module.css";

export default function Loading() {
  const fakeArr = new Array(15).fill(0);

  return (
    <div className={styles.main_skeleton_wrapper}>
      <div className={styles.main_skeleton}>
        <aside className={styles.left_aside_skeleton}>
          <div className={styles.back_to_restaurants_skeleton}></div>
        </aside>
        <div className={styles.main_restaurant_menu_skeleton_wrapper}>
          <div className={styles.restaurant_title_picture_skeleton}></div>

          <div className={styles.restaurant_menu_block}>
            <div className={styles.restaurant_today_event_skeleton}></div>

            <div className={styles.back_to_restaurants_skeleton_mobile}></div>

            <div className={styles.restaurant_product_wrapper}>
              {fakeArr.map((_, idx) => {
                return (
                  <div
                    className="col-xxl-3 col-xl-3 col-lg-4 col-md-4 col-sm-6 col-12"
                    key={idx}
                  >
                    <div className={styles.product_skeleton}></div>
                  </div>
                );
              })}
            </div>
          </div>
        </div>
        <aside className={styles.basket_skeleton}></aside>
      </div>
    </div>
  );
}
