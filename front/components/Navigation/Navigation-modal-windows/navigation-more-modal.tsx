import styles from "../navigation.module.css";

import { ShowHideNavigation } from "../show&hide-navigation";

export default function More({ hide }: { hide: ShowHideNavigation[] }) {
  return (
    <div className={styles.modal_more_navigation_window}>
      {hide.map((e, idx) => {
        return (
          <div className={styles.modal_inner_elements} key={idx}>
            {e.content}
          </div>
        );
      })}
    </div>
  );
}
