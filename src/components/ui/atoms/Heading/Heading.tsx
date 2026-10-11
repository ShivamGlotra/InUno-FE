import React from 'react';
import styles from './Heading.module.css';

export interface HeadingProps {
  children: React.ReactNode;
  level?: 1 | 2 | 3 | 4 | 5 | 6;
  fontSize?: 'sm' | 'md' | 'lg' | 'xl' | '2xl' | '3xl' | '4xl' | '5xl' | '6xl';
  color?: 'primary' | 'secondary' | 'success' | 'warning' | 'error' | 'neutral' | 'info';
}

const Heading = ({ children, level = 2 }: HeadingProps) => {
  const Tag = `h${level}` as keyof React.JSX.IntrinsicElements;

  return <Tag className={`${styles.heading} ${styles[`h${level}`]}`}>{children}</Tag>;
};

export default Heading;
