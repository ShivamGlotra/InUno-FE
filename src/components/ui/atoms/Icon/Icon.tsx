import React from "react";
import styles from "./Icon.module.css";

export interface IconProps {
  children: React.ReactNode;
  size?: "sm" | "md" | "lg";
  label?: string;
}

export default function Icon({
  children,
  size = "md",
  label,
}: IconProps) {
  return (
    <span
      className={`${styles.icon} ${styles[size]}`}
      aria-label={label}
      role={label ? "img" : undefined}
    >
      {children}
    </span>
  );
}
