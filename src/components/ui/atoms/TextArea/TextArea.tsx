import React from "react";
import styles from "./TextArea.module.css";

export interface TextAreaProps
  extends React.TextareaHTMLAttributes<HTMLTextAreaElement> {
  error?: boolean;
}

export default function TextArea({
  error = false,
  className = "",
  ...props
}: TextAreaProps) {
  return (
    <textarea
      {...props}
      className={`${styles.textarea} ${error ? styles.error : ""} ${className}`}
    />
  );
}
