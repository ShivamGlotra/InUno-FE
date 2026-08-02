import React from "react";
import styles from "./Input.module.css";

export interface InputProps
  extends React.InputHTMLAttributes<HTMLInputElement> {
  error?: boolean;
}

export default function Input({
  error = false,
  className = "",
  ...props
}: InputProps) {
  return (
    <input
      {...props}
      className={`${styles.input} ${error ? styles.error : ""} ${className}`}
    />
  );
}
