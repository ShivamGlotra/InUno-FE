import React from 'react';
import styles from './Divider.module.css';

export interface DividerProps {
  orientation?: 'horizontal' | 'vertical';
}

export default function Divider({ orientation = 'horizontal' }: DividerProps) {
  return (
    <div
      className={`${styles.divider} ${
        orientation === 'vertical' ? styles.vertical : styles.horizontal
      }`}
      role="separator"
      aria-orientation={orientation}
    />
  );
}
