"use client";

import type { ReactNode } from "react";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./Modal.module.css";

export interface ModalProps {
  open: boolean;
  title?: string;
  children: ReactNode;
  onClose: () => void;
}

export default function Modal({
  open,
  title,
  children,
  onClose,
}: ModalProps) {
  if (!open) return null;

  return (
    <div className={styles.overlay} onClick={onClose}>
      <div
        className={styles.modal}
        onClick={(event) => event.stopPropagation()}
      >
        <div className={styles.header}>
          {title && <Heading level={3}>{title}</Heading>}

          <button type="button" onClick={onClose}>
            ×
          </button>
        </div>

        <div>{children}</div>
      </div>
    </div>
  );
}
