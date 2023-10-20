import { CardData } from "@/service-components/RestCard/RestCard.props";

export interface Props {
  params: {
    shop: string;
  };
}

// getting each restaurant menu
export async function getRestaurantMenu({ params: { shop } }: Props) {
  const res = await fetch(`http://localhost:3001/record/${shop}`, {
    next: {
      revalidate: 60,
    },
  });

  return res.json();
}

// getting restaurant data
export async function getData() {
  const data = await fetch("http://localhost:3001/data", {
    next: {
      revalidate: 60,
    },
  });

  return data.json();
}

// binary search
export function BinarySearchData(arr: CardData[], target: number): string {
  let low = 0;
  let high = arr.length - 1;

  while (low <= high) {
    const mid = Math.floor((low + high) / 2);

    if (arr[mid].id === target) {
      return arr[mid].product_name;
    } else if (target < arr[mid].id) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return "";
}
