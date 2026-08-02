import React from "react";
import styles from "./FormHelperText.module.css";

export interface FormHelperTextProps {
  children: React.ReactNode;
  error?: boolean;
}

export default function FormHelperText({
  children,
  error = false,
}: FormHelperTextProps) {
  return (
    <span className={`${styles.helper} ${error ? styles.error : ""}`}>
      {children}
    </span>
  );
}
