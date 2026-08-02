"use client";

import { useState, type ReactNode } from "react";
import styles from "./Accordion.module.css";

export interface AccordionProps {
  title: string;
  children: ReactNode;
  defaultOpen?: boolean;
}

export default function Accordion({
  title,
  children,
  defaultOpen = false,
}: AccordionProps) {
  const [open, setOpen] = useState(defaultOpen);

  return (
    <div className={styles.accordion}>
      <button
        type="button"
        className={styles.trigger}
        onClick={() => setOpen((value) => !value)}
        aria-expanded={open}
      >
        <span>{title}</span>
        <span className={styles.icon}>{open ? "−" : "+"}</span>
      </button>

      {open && <div className={styles.content}>{children}</div>}
    </div>
  );
}
