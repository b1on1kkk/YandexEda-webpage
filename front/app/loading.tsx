import styles from "./homepage.module.css";

export default function Loading() {
  const fakeArray = new Array(15).fill(0);

  return (
    <div className="container">
      <div className={styles.skeleton_title_name}></div>

      <div className={styles.skeleton_sorting_block}></div>

      <div className="row">
        {fakeArray.map((_, idx) => {
          return (
            <div className="col-md-6 col-lg-4 col-xxl-3" key={idx}>
              <div className={styles.restaurants_picture_skeleton}></div>

              <div className={styles.restaurants_text_skeleton}></div>
              <div className={styles.restaurants_text_skeleton}></div>

              <div className={styles.restaurants_event_skeleton}></div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
