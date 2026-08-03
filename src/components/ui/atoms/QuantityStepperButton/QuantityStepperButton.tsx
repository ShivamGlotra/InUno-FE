import React from 'react';
import styles from './QuantityStepperButton.module.css';

export interface QuantityStepperButtonProps {
  action: 'increase' | 'decrease';
  onClick?: () => void;
  disabled?: boolean;
}

export default function QuantityStepperButton({
  action,
  onClick,
  disabled = false,
}: QuantityStepperButtonProps) {
  return (
    <button
      type="button"
      className={styles.button}
      onClick={onClick}
      disabled={disabled}
      aria-label={action === 'increase' ? 'Increase quantity' : 'Decrease quantity'}
    >
      {action === 'increase' ? '+' : '−'}
    </button>
  );
}
