import React from 'react';
import styles from './Switch.module.css';

export interface SwitchProps extends Omit<React.InputHTMLAttributes<HTMLInputElement>, 'type'> {
  checked?: boolean;
  disabled?: boolean;
}

export default function Switch({ className = '', disabled, checked, ...props }: SwitchProps) {
  return (
    <label className={`${styles.wrapper} ${className}`}>
      <input
        {...props}
        type="checkbox"
        className={styles.input}
        disabled={disabled}
        checked={checked}
      />
      <span className={styles.track}>
        <span className={styles.thumb} />
      </span>
    </label>
  );
}
