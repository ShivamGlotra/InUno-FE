import React from 'react';
import styles from './Heading.module.css';

export interface HeadingProps {
  children: React.ReactNode;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
}

export default function Heading({ children, level = 2 }: HeadingProps) {
  const Tag = `h${level}` as keyof React.JSX.IntrinsicElements;

  return <Tag className={`${styles.heading} ${styles[`h${level}`]}`}>{children}</Tag>;
}
