'use client';

import { useId, useState, type ReactNode } from 'react';
import styles from './Accordion.module.css';

export type AccordionVariant = 'plus' | 'chevron';

export interface AccordionProps {
  title: string;
  children?: ReactNode;
  defaultOpen?: boolean;
  /** 'plus' = +/− toggle, 'chevron' = iOS-style down/up arrow */
  variant?: AccordionVariant;
}

const Accordion = ({ title, children, defaultOpen = false, variant = 'plus' }: AccordionProps) => {
  const [open, setOpen] = useState(defaultOpen);
  const id = useId();
  const contentId = `${id}-content`;

  return (
    <div className={styles.accordion} data-open={open}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((value) => !value)}
        aria-expanded={open}
        aria-controls={contentId}
      >
        <span>{title}</span>

        {variant === 'plus' ? (
          <span className={styles.plus} aria-hidden="true">
            <span className={styles.plusH} />
            <span className={styles.plusV} />
          </span>
        ) : (
          <svg
            className={styles.chevron}
            width="14"
            height="14"
            viewBox="0 0 14 14"
            fill="none"
            aria-hidden="true"
          >
            <path
              d="M2.5 5 7 9.5 11.5 5"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
            />
          </svg>
        )}
      </button>

      <div id={contentId} role="region" className={styles.panel} aria-hidden={!open}>
        <div className={styles.panelInner}>
          <div className={styles.content}>{children}</div>
        </div>
      </div>
    </div>
  );
};

export default Accordion;
