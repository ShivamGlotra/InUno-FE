import type { ReactNode } from 'react';
import styles from './Card.module.css';

export interface CardProps {
  children?: ReactNode;
  icon?: ReactNode;
  title?: string;
  description?: string;
  className?: string;
  selected?: boolean;
  onClick?: () => void;
}

export default function Card({
  children,
  icon,
  title,
  description,
  className,
  selected,
  onClick,
}: CardProps) {
  return (
    <div
      className={`${styles.card} ${onClick ? styles.clickable : ''} ${selected ? styles.selected : ''} ${className ?? ''}`}
      onClick={onClick}
      role={onClick ? 'button' : undefined}
    >
      {icon && <div className={styles.icon}>{icon}</div>}
      <div className={styles.content}>
        {title && <h3 className={styles.title}>{title}</h3>}
        {description && <p className={styles.description}>{description}</p>}
        {children}
      </div>
    </div>
  );
}
