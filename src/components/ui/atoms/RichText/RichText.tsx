import React from "react";
import styles from "./RichText.module.css";

export interface RichTextProps {
  children: React.ReactNode;
}

export default function RichText({ children }: RichTextProps) {
  return <div className={styles.richText}>{children}</div>;
}
