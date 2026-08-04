import React from 'react';
import styles from './StockDot.module.css';

export interface StockDotProps {
  status: 'in-stock' | 'low-stock' | 'out-of-stock';
}

export default function StockDot({ status }: StockDotProps) {
  return <span className={`${styles.dot} ${styles[status]}`} aria-label={status} />;
}
