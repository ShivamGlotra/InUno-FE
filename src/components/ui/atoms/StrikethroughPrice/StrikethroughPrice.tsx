import React from "react";
import styles from "./StrikethroughPrice.module.css";

export interface StrikethroughPriceProps {
  amount: number;
  currency?: string;
}

export default function StrikethroughPrice({
  amount,
  currency = "USD",
}: StrikethroughPriceProps) {
  const formatted = new Intl.NumberFormat("en-US", {
    style: "currency",
    currency,
  }).format(amount);

  return <span className={styles.price}>{formatted}</span>;
}
