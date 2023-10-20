import { ReactNode } from "react";

export interface HtagProps {
  tag: "h2" | "h3";
  children: ReactNode;
}
