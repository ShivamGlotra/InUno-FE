import { InputHTMLAttributes } from 'react';
import { forwardRef, useEffect, useRef } from 'react';
import styles from './Checkbox.module.css';

interface CheckboxProps extends Omit<InputHTMLAttributes<HTMLInputElement>, 'type'> {
  /**
   * Indeterminate state
   */
  indeterminate?: boolean;
  label?: string;
}

const Checkbox = forwardRef<HTMLInputElement, CheckboxProps>(
  ({ className = '', indeterminate = false, ...props }, ref) => {
    const internalRef = useRef<HTMLInputElement>(null);

    const resolvedRef = (ref ?? internalRef) as React.RefObject<HTMLInputElement>;

    useEffect(() => {
      if (resolvedRef.current) {
        resolvedRef.current.indeterminate = indeterminate;
      }
    }, [indeterminate, resolvedRef]);

    return (
      <input
        ref={resolvedRef}
        type="checkbox"
        className={`${styles.checkbox} ${className}`}
        {...props}
      />
    );
  },
);

Checkbox.displayName = 'Checkbox';

export default Checkbox;
