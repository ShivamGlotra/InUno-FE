import React from "react";
import styles from "./Logo.module.css";

export interface LogoProps {
  text?: string;
  src?: string;
  alt?: string;
}

export default function Logo({
  text = "Logo",
  src,
  alt = "Logo",
}: LogoProps) {
  if (src) {
    return <img src={src} alt={alt} className={styles.image} />;
  }

  return <span className={styles.logo}>{text}</span>;
}
