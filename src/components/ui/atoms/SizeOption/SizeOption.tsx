import React from "react";
import styles from "./SizeOption.module.css";

export interface SizeOptionProps {
  size: string;
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
}

export default function SizeOption({
  size,
  selected = false,
  disabled = false,
  onClick,
}: SizeOptionProps) {
  return (
    <button
      type="button"
      className={`${styles.option} ${selected ? styles.selected : ""}`}
      disabled={disabled}
      onClick={onClick}
    >
      {size}
    </button>
  );
}
