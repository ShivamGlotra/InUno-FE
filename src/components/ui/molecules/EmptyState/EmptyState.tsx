import type { ReactNode } from 'react';
import Heading from '@/components/ui/atoms/Heading/Heading';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './EmptyState.module.css';

export interface EmptyStateProps {
  title: string;
  description?: string;
  action?: ReactNode;
}

export default function EmptyState({ title, description, action }: EmptyStateProps) {
  return (
    <div className={styles.empty}>
      <div className={styles.icon}>∅</div>
      <Heading level={3}>{title}</Heading>

      {description && <Text>{description}</Text>}

      {action}
    </div>
  );
}
