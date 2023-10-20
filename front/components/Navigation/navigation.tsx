"use client";

import { useEffect, useState } from "react";

import Image from "next/image";
import styles from "./navigation.module.css";

import arrowDown from "../../public/arrow_down.png";

import { ShowHideNavigation, MoreBlockHandler } from "./show&hide-navigation";

import More from "./Navigation-modal-windows/navigation-more-modal";
import Link from "next/link";

export default function Navigation({ show }: { show: ShowHideNavigation[] }) {
  const [moreModalStatus, setMoreModalStatus] = useState<boolean>(false);

  // detect scrolling
  useEffect(() => {
    const handleScroll = () => setMoreModalStatus(false);

    window.addEventListener("scroll", handleScroll);

    return () => {
      window.removeEventListener("scroll", handleScroll);
    };
  }, []);
  //

  // variable to save page width
  const [windowWidth, setWindowWidth] = useState<number>(0);

  // variables to save hide menu navigation and current menu navigation
  const [navigatonMenu, setNavigatonMenu] =
    useState<ShowHideNavigation[]>(show);
  const [navigationHideMenu, setNavigationHideMenu] = useState<
    ShowHideNavigation[]
  >([]);
  //

  useEffect(() => {
    function handleResize() {
      setWindowWidth(window.innerWidth);
    }

    handleResize(); // Set initial window width

    window.addEventListener("resize", handleResize);

    return () => {
      window.removeEventListener("resize", handleResize);
    };
  }, []);

  MoreBlockHandler(
    windowWidth,
    navigationHideMenu,
    setNavigatonMenu,
    setNavigationHideMenu,
    show
  );

  function clickedStatusChanger(idx: number) {
    setNavigatonMenu(
      navigatonMenu.map((e, innerIdx) => {
        if (innerIdx === idx) return { ...e, status: true };
        return { ...e, status: false };
      })
    );
  }

  return (
    <div className={styles.navigation_wrapper}>
      <nav>
        <ul>
          {navigatonMenu.map((e: ShowHideNavigation, idx) => {
            switch (e.content) {
              case "Бургеры":
                return (
                  <Link href="/restaurants?category=burgers" key={idx}>
                    <li
                      className={e.status ? styles.li_navigation_status : ""}
                      onClick={() => clickedStatusChanger(idx)}
                    >
                      {e.content}
                    </li>
                  </Link>
                );

              case "Суши":
                return (
                  <Link href="/restaurants?category=sushi" key={idx}>
                    <li
                      className={e.status ? styles.li_navigation_status : ""}
                      onClick={() => clickedStatusChanger(idx)}
                    >
                      {e.content}
                    </li>
                  </Link>
                );
                break;
              case "Пицца":
                return (
                  <Link href="/restaurants?category=pizza" key={idx}>
                    <li
                      className={e.status ? styles.li_navigation_status : ""}
                      onClick={() => clickedStatusChanger(idx)}
                    >
                      {e.content}
                    </li>
                  </Link>
                );

              case "Вок":
                return (
                  <Link href="/restaurants?category=wok" key={idx}>
                    <li
                      className={e.status ? styles.li_navigation_status : ""}
                      onClick={() => clickedStatusChanger(idx)}
                    >
                      {e.content}
                    </li>
                  </Link>
                );

              default:
                return (
                  <Link href="/" key={idx}>
                    <li
                      className={e.status ? styles.li_navigation_status : ""}
                      onClick={() => clickedStatusChanger(idx)}
                    >
                      {e.content}
                    </li>
                  </Link>
                );
            }
          })}

          {navigationHideMenu.length !== 0 ? (
            <li
              className={styles.more_li_button}
              onClick={
                moreModalStatus
                  ? () => setMoreModalStatus(false)
                  : () => setMoreModalStatus(true)
              }
            >
              <span>Ещё</span>
              <Image src={arrowDown} alt="more-arrow" />
            </li>
          ) : (
            <></>
          )}
        </ul>
        {moreModalStatus ? <More hide={navigationHideMenu} /> : <></>}
      </nav>
    </div>
  );
}
