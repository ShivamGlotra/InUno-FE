import React from 'react';
import styles from './DiscountBadge.module.css';

export interface DiscountBadgeProps {
  percentage: number;
}

export default function DiscountBadge({ percentage }: DiscountBadgeProps) {
  return <span className={styles.badge}>-{percentage}%</span>;
}
