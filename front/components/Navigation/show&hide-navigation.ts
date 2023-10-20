export interface ShowHideNavigation {
  content: string;
  status: boolean;
}

export function MoreBlockHandler(
  screenWidth: number,
  toHideContent: ShowHideNavigation[] | [],
  setterShow: React.Dispatch<React.SetStateAction<ShowHideNavigation[]>>,
  setterHide: React.Dispatch<React.SetStateAction<ShowHideNavigation[]>>,
  show: ShowHideNavigation[]
) {
  if (toHideContent.length === 0) {
    if (screenWidth <= 1000 && screenWidth !== 0) {
      const copy = [...show];

      const removed = copy.splice(-5);

      setterHide(removed);

      setterShow(copy);
    }
  } else {
    if (screenWidth > 1000) {
      setterHide([]);

      setterShow(show);
    }
  }
}
