import React from 'react';
import styles from './Text.module.css';

export interface TextProps {
  children: React.ReactNode;
  size?: 'xs' | 'sm' | 'md' | 'lg' | 'xl';
  weight?: 'normal' | 'medium' | 'semibold' | 'bold';
  muted?: boolean;
}

export default function Text({
  children,
  size = 'md',
  weight = 'normal',
  muted = false,
}: TextProps) {
  return (
    <span
      className={`${styles.text} ${styles[size]} ${styles[weight]} ${muted ? styles.muted : ''}`}
    >
      {children}
    </span>
  );
}
