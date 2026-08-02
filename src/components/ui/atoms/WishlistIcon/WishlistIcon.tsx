import React from "react";
import styles from "./WishlistIcon.module.css";

export interface WishlistIconProps {
  active?: boolean;
  size?: number;
  onClick?: () => void;
}

export default function WishlistIcon({
  active = false,
  size = 24,
  onClick,
}: WishlistIconProps) {
  return (
    <button
      type="button"
      className={styles.button}
      onClick={onClick}
      aria-label={active ? "Remove from wishlist" : "Add to wishlist"}
    >
      <span
        className={`${styles.heart} ${active ? styles.active : ""}`}
        style={{ fontSize: size }}
      >
        {active ? "♥" : "♡"}
      </span>
    </button>
  );
}
