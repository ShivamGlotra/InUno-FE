"use client";

import { useState } from "react";
import SizeOption from "@/components/ui/atoms/SizeOption/SizeOption";
import styles from "./VariantSelector.module.css";

export interface Variant {
  id: string;
  label: string;
}

export interface VariantSelectorProps {
  variants: Variant[];
  defaultVariant?: string;
  onChange?: (id: string) => void;
}

export default function VariantSelector({
  variants,
  defaultVariant,
  onChange,
}: VariantSelectorProps) {
  const [selected, setSelected] = useState(
    defaultVariant ?? variants[0]?.id
  );

  const handleSelect = (id: string) => {
    setSelected(id);
    onChange?.(id);
  };

  return (
    <div className={styles.selector}>
      {variants.map((variant) => (
        <SizeOption
          key={variant.id}
          size={variant.label}
          selected={selected === variant.id}
          onClick={() => handleSelect(variant.id)}
        />
      ))}
    </div>
  );
}
