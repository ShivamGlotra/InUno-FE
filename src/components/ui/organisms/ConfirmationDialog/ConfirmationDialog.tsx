import Modal from '@/components/ui/molecules/Modal/Modal';
import Button from '@/components/ui/atoms/Button/Button';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './ConfirmationDialog.module.css';

export interface ConfirmationDialogProps {
  open: boolean;
  title: string;
  message: string;
  onConfirm?: () => void;
  onCancel?: () => void;
}

export default function ConfirmationDialog({
  open,
  title,
  message,
  onConfirm,
  onCancel,
}: ConfirmationDialogProps) {
  return (
    <Modal open={open} title={title} onClose={onCancel ?? (() => {})}>
      <div className={styles.content}>
        <Text>{message}</Text>

        <div className={styles.actions}>
          <Button onClick={onCancel}>Cancel</Button>

          <Button onClick={onConfirm}>Confirm</Button>
        </div>
      </div>
    </Modal>
  );
}
