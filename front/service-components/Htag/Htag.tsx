import { HtagProps } from "./Htag.props";
import styles from "./Htag.module.css";

export default function Htag({ tag, children }: HtagProps): JSX.Element {
  switch (tag) {
    case "h2":
      return <h2 className={styles.h2}>{children}</h2>;
    case "h3":
      return <h3 className={styles.h3}>{children}</h3>;
    default:
      return <></>;
  }
}
