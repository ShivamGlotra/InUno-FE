'use client';

import type { ReactNode } from 'react';
import styles from './Drawer.module.css';

export interface DrawerProps {
  open: boolean;
  children: ReactNode;
  title?: string;
  onClose: () => void;
}

export default function Drawer({ open, children, title, onClose }: DrawerProps) {
  if (!open) return null;

  return (
    <div className={styles.overlay} onClick={onClose}>
      <aside className={styles.drawer} onClick={(e) => e.stopPropagation()}>
        <div className={styles.header}>
          {title && <strong>{title}</strong>}

          <button type="button" onClick={onClose}>
            ×
          </button>
        </div>

        <div className={styles.content}>{children}</div>
      </aside>
    </div>
  );
}
