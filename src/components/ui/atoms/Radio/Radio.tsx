import React from 'react';
import styles from './Radio.module.css';

export interface RadioProps extends React.InputHTMLAttributes<HTMLInputElement> {
  label?: string;
}

export default function Radio({ className = '', label, ...props }: RadioProps) {
  return (
    <div className={styles.radioContainer}>
      <input {...props} type="radio" className={`${styles.radio} ${className}`} />
      {label && <label className={styles.label}>{label}</label>}
    </div>
  );
}
