'use client';
import clsx from 'clsx';
import { ButtonHTMLAttributes, useState } from 'react';
import Link from 'next/link';
import styles from './Button.module.css';

type ButtonVariant =
  'primary' | 'secondary' | 'tertiary' | 'outline' | 'danger' | 'icon-only' | 'link' | 'ghost';
type ButtonSize = 'sm' | 'md' | 'lg';

export interface ButtonProps extends ButtonHTMLAttributes<HTMLButtonElement> {
  variant?: ButtonVariant;
  size?: ButtonSize;
  isLoading?: boolean;
  href?: string;
}

const Button: React.FC<ButtonProps> = ({
  variant = 'primary',
  size = 'md',
  isLoading = false,
  disabled,
  className,
  children,
  href,
  onClick,
  ...props
}) => {
  const isDisabled = disabled || isLoading;
  const buttonClassNames = clsx(
    styles.base,
    styles[variant],
    styles[size],
    isDisabled && styles.disabled,
    className,
  );

  if (href) {
    return (
      <Link
        className={buttonClassNames}
        href={href}
        aria-disabled={isDisabled || undefined}
        tabIndex={isDisabled ? -1 : undefined}
        onClick={(e) => {
          if (isDisabled) {
            e.preventDefault(); // block navigation while disabled/loading
            return;
          }
          onClick?.(e as unknown as React.MouseEvent<HTMLButtonElement>);
        }}
      >
        {isLoading ? 'Loading...' : children}
      </Link>
    );
  }

  return (
    <button
      className={buttonClassNames}
      disabled={isDisabled}
      aria-busy={isLoading || undefined}
      onClick={onClick}
      {...props}
    >
      {isLoading ? 'Loading...' : children}
    </button>
  );
};

export default Button;
