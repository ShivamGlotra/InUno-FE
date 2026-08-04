import clsx from 'clsx';
import { ButtonHTMLAttributes } from 'react';
import styles from './Button.module.css';

type ButtonVariant =
  'primary' | 'secondary' | 'tertiary' | 'outline' | 'danger' | 'icon-only' | 'link' | 'ghost';
type ButtonSize = 'sm' | 'md' | 'lg';

export interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant;
  size?: ButtonSize;
  isLoading?: boolean;
}

const Button: React.FC<ButtonProps> = ({
  variant = 'primary',
  size = 'md',
  isLoading = false,
  disabled,
  className,
  children,
  ...props
}) => {
  const buttonClassNames = clsx(styles.base, styles[variant], styles[size], className);

  return (
    <button className={buttonClassNames} disabled={disabled || isLoading} {...props}>
      {isLoading ? 'loading...' : children}
    </button>
  );
};

export default Button;
