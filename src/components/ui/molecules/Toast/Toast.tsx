import Text from '@/components/ui/atoms/Text/Text';
import styles from './Toast.module.css';

export type ToastVariant = 'info' | 'success' | 'warning' | 'error';

export interface ToastProps {
  message: string;
  variant?: ToastVariant;
  onClose?: () => void;
}

export default function Toast({ message, variant = 'info', onClose }: ToastProps) {
  return (
    <div className={`${styles.toast} ${styles[variant]}`} role="status">
      <Text>{message}</Text>

      {onClose && (
        <button type="button" onClick={onClose}>
          ×
        </button>
      )}
    </div>
  );
}
