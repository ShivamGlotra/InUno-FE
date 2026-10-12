import type { ReactNode } from 'react';
import styles from './Card.module.css';
import Heading from '../../atoms/Heading';

export interface CardProps {
  children?: ReactNode;
  icon?: ReactNode;
  title?: string;
  description?: string;
  className?: string;
  selected?: boolean;
  onClick?: () => void;
}

const Card = ({ children, icon, title, description, className, selected, onClick }: CardProps) => {
  return (
    <div
      className={`${styles.card} ${onClick ? styles.clickable : ''} ${selected ? styles.selected : ''} ${className ?? ''}`}
      onClick={onClick}
      role={onClick ? 'button' : undefined}
    >
      {icon && <div className={styles.icon}>{icon}</div>}
      <div className={styles.content}>
        {title && (
          <Heading level={7} color="basic" className={styles.title}>
            {title}
          </Heading>
        )}
        {description && (
          <Heading level={9} fontSize="tiny" color="subtitle" className={styles.description}>
            {description}
          </Heading>
        )}
        {children}
      </div>
    </div>
  );
};

export default Card;
