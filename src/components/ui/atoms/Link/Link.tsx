import React from 'react';
import styles from './Link.module.css';

export interface LinkProps extends React.AnchorHTMLAttributes<HTMLAnchorElement> {
  children: React.ReactNode;
}

export default function Link({ children, className = '', ...props }: LinkProps) {
  return (
    <a {...props} className={`${styles.link} ${className}`}>
      {children}
    </a>
  );
}
