import React from 'react';
import styles from './Price.module.css';

export interface PriceProps {
  amount: number;
  currency?: string;
  locale?: string;
}

export default function Price({ amount, currency = 'USD', locale = 'en-US' }: PriceProps) {
  const formatted = new Intl.NumberFormat(locale, {
    style: 'currency',
    currency,
  }).format(amount);

  return <span className={styles.price}>{formatted}</span>;
}
