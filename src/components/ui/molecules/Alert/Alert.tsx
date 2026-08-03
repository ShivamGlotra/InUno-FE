import Icon from '@/components/ui/atoms/Icon/Icon';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './Alert.module.css';

export type AlertVariant = 'info' | 'success' | 'warning' | 'error';

export interface AlertProps {
  title?: string;
  message: string;
  variant?: AlertVariant;
  onClose?: () => void;
}

export default function Alert({ title, message, variant = 'info', onClose }: AlertProps) {
  return (
    <div className={`${styles.alert} ${styles[variant]}`} role="alert">
      <Icon>{variant === 'success' ? '✓' : variant === 'error' ? '!' : 'i'}</Icon>

      <div className={styles.content}>
        {title && <strong>{title}</strong>}
        <Text>{message}</Text>
      </div>

      {onClose && (
        <button className={styles.close} onClick={onClose} type="button">
          ×
        </button>
      )}
    </div>
  );
}
