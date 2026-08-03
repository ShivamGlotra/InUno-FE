import React from 'react';
import styles from './ColorSwatch.module.css';

export interface ColorSwatchProps {
  color: string;
  label?: string;
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
}

export default function ColorSwatch({
  color,
  label,
  selected = false,
  disabled = false,
  onClick,
}: ColorSwatchProps) {
  return (
    <button
      type="button"
      className={`${styles.swatch} ${selected ? styles.selected : ''}`}
      style={{ backgroundColor: color }}
      aria-label={label ?? color}
      disabled={disabled}
      onClick={onClick}
    />
  );
}
