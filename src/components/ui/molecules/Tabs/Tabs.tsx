"use client";

import { useState, type ReactNode } from "react";
import styles from "./Tabs.module.css";

export interface TabItem {
  id: string;
  label: string;
  content: ReactNode;
}

export interface TabsProps {
  tabs: TabItem[];
  defaultTab?: string;
}

export default function Tabs({
  tabs,
  defaultTab,
}: TabsProps) {
  const [active, setActive] = useState(
    defaultTab ?? tabs[0]?.id
  );

  const current = tabs.find((tab) => tab.id === active);

  return (
    <div className={styles.tabs}>
      <div className={styles.list} role="tablist">
        {tabs.map((tab) => (
          <button
            key={tab.id}
            type="button"
            role="tab"
            className={active === tab.id ? styles.active : ""}
            onClick={() => setActive(tab.id)}
          >
            {tab.label}
          </button>
        ))}
      </div>

      <div className={styles.content}>
        {current?.content}
      </div>
    </div>
  );
}
