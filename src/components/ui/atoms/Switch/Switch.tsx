import React from "react";
import styles from "./Switch.module.css";

export interface SwitchProps
  extends Omit<React.InputHTMLAttributes<HTMLInputElement>, "type"> {}

export default function Switch({
  className = "",
  ...props
}: SwitchProps) {
  return (
    <label className={`${styles.wrapper} ${className}`}>
      <input
        {...props}
        type="checkbox"
        className={styles.input}
      />
      <span className={styles.track}>
        <span className={styles.thumb} />
      </span>
    </label>
  );
}
