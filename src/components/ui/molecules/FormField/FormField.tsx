import type { ReactNode } from 'react';
import Label from '@/components/ui/atoms/Label/Label';
import FormHelperText from '@/components/ui/atoms/FormHelperText/FormHelperText';
import styles from './FormField.module.css';

export interface FormFieldProps {
  label: string;
  children: ReactNode;
  helperText?: string;
  error?: string;
  required?: boolean;
}

export default function FormField({
  label,
  children,
  helperText,
  error,
  required,
}: FormFieldProps) {
  return (
    <div className={styles.field}>
      <Label required={required}>{label}</Label>

      {children}

      {(helperText || error) && (
        <FormHelperText error={!!error}>{error || helperText}</FormHelperText>
      )}
    </div>
  );
}
