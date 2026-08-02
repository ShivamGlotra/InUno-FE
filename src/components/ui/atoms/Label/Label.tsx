import React from "react";
import styles from "./Label.module.css";

export interface LabelProps {
  children: React.ReactNode;
  htmlFor?: string;
  required?: boolean;
}

export default function Label({
  children,
  htmlFor,
  required = false,
}: LabelProps) {
  return (
    <label htmlFor={htmlFor} className={styles.label}>
      {children}
      {required && <span className={styles.required}> *</span>}
    </label>
  );
}
