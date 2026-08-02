import React from "react";
import styles from "./ShippingBadge.module.css";

export interface ShippingBadgeProps {
  children?: React.ReactNode;
  free?: boolean;
}

export default function ShippingBadge({
  children,
  free = false,
}: ShippingBadgeProps) {
  return (
    <span className={styles.badge}>
      {children ?? (free ? "Free Shipping" : "Shipping")}
    </span>
  );
}
