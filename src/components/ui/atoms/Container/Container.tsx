import React from "react";
import styles from "./Container.module.css";

export interface ContainerProps {
  children: React.ReactNode;
  size?: "sm" | "md" | "lg" | "xl" | "full";
  className?: string;
}

export default function Container({
  children,
  size = "lg",
  className = "",
}: ContainerProps) {
  return (
    <div className={`${styles.container} ${styles[size]} ${className}`}>
      {children}
    </div>
  );
}
