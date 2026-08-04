import React from 'react';
import styles from './RatingStarUnit.module.css';

export interface RatingStarUnitProps {
  filled?: boolean;
  half?: boolean;
  size?: 'sm' | 'md' | 'lg';
}

export default function RatingStarUnit({
  filled = false,
  half = false,
  size = 'md',
}: RatingStarUnitProps) {
  return (
    <span
      className={`${styles.star} ${styles[size]} ${
        filled ? styles.filled : ''
      } ${half ? styles.half : ''}`}
      aria-hidden="true"
    >
      ★
    </span>
  );
}
