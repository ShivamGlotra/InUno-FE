import { ReactNode } from 'react';
import styles from './Badge.module.css';

interface BadgeProps {
  children: ReactNode;
  className?: string;
  variant?: 'primary' | 'secondary' | 'success' | 'warning' | 'error' | 'neutral' | 'info';
  size?: 'sm' | 'md' | 'lg';
  pill?: boolean;
}

const Badge = ({
  children,
  className = '',
  variant = 'primary',
  size = 'md',
  pill = false,
}: BadgeProps) => {
  const baseClasses = styles.badge;
  const variantClasses = {
    primary: styles.primary,
    secondary: styles.secondary,
    success: styles.success,
    warning: styles.warning,
    error: styles.error,
    neutral: styles.neutral,
    info: styles.info,
  };

  const sizeClasses = {
    sm: styles.sm,
    md: styles.md,
    lg: styles.lg,
  };

  const pillClass = pill ? styles.pill : '';

  return (
    <span
      className={`${baseClasses} ${variantClasses[variant]} ${sizeClasses[size]} ${pillClass} ${className}`}
    >
      {children}
    </span>
  );
};

export default Badge;
