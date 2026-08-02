import React from "react";
import styles from "./StarIcon.module.css";

export interface StarIconProps {
  filled?: boolean;
  size?: number;
}

export default function StarIcon({
  filled = false,
  size = 20,
}: StarIconProps) {
  return (
    <span
      className={`${styles.star} ${filled ? styles.filled : ""}`}
      style={{ fontSize: size }}
      aria-hidden="true"
    >
      ★
    </span>
  );
}
