"use client";

import SearchInput from "@/components/ui/atoms/SearchInput/SearchInput";
import styles from "./SearchBar.module.css";

export interface SearchBarProps {
  placeholder?: string;
  onSearch?: (value: string) => void;
}

export default function SearchBar({
  placeholder = "Search...",
  onSearch,
}: SearchBarProps) {
  return (
    <div className={styles.search}>
      <SearchInput placeholder={placeholder} />

      <button
        type="button"
        onClick={() => onSearch?.("")}
      >
        Search
      </button>
    </div>
  );
}
