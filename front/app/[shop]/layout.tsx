import style from "./loading.module.css";

export default function RestarauntLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <div className={style.products_layout}>{children}</div>;
}
