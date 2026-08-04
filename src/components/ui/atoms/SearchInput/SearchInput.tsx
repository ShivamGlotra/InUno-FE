import React from 'react';
import styles from './SearchInput.module.css';

export interface SearchInputProps extends React.InputHTMLAttributes<HTMLInputElement> {
  onSearch?: () => void;
}

export default function SearchInput({ onSearch, className = '', ...props }: SearchInputProps) {
  return (
    <div className={`${styles.wrapper} ${className}`}>
      <span className={styles.icon}>⌕</span>

      <input {...props} type="search" className={styles.input} />

      {onSearch && (
        <button type="button" className={styles.button} onClick={onSearch}>
          Search
        </button>
      )}
    </div>
  );
}
