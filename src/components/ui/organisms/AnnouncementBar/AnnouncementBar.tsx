import Alert from '@/components/ui/molecules/Alert/Alert';
import styles from './AnnouncementBar.module.css';

export interface AnnouncementBarProps {
  message: string;
  onClose?: () => void;
}

export default function AnnouncementBar({ message, onClose }: AnnouncementBarProps) {
  return (
    <div className={styles.bar}>
      <Alert message={message} variant="info" onClose={onClose} />
    </div>
  );
}
