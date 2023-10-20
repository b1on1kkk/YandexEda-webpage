import style from "./cartloader.module.css";

export default function CardLoader() {
  return (
    <>
      <div className={style.skeleton_title_loader}></div>

      <div className={style.skeleton_main_basket_menu_loader}>
        <div className={style.skeleton_product_loader}></div>
        <div className={style.skeleton_product_loader}></div>
        <div className={style.skeleton_product_loader}></div>
        <div className={style.skeleton_service_price_loader}>
          <div className={style.skeleton_service_price_text_loader}></div>
          <div className={style.skeleton_service_price}></div>
        </div>
        <div className={style.skeleton_total_price_block_loader}></div>
      </div>
    </>
  );
}
