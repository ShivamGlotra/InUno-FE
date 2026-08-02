import React from "react";
import styles from "./Radio.module.css";

export interface RadioProps
  extends React.InputHTMLAttributes<HTMLInputElement> {}

export default function Radio({
  className = "",
  ...props
}: RadioProps) {
  return (
    <input
      {...props}
      type="radio"
      className={`${styles.radio} ${className}`}
    />
  );
}
