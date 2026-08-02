"use client";

import { useState } from "react";
import Input from "@/components/ui/atoms/Input/Input";
import styles from "./PromoCodeInput.module.css";

export interface PromoCodeInputProps {
  onApply?: (code: string) => void;
}

export default function PromoCodeInput({
  onApply,
}: PromoCodeInputProps) {
  const [code, setCode] = useState("");

  return (
    <div className={styles.container}>
      <Input
        value={code}
        onChange={(event) => setCode(event.target.value)}
        placeholder="Promo code"
      />

      <button
        type="button"
        onClick={() => onApply?.(code)}
      >
        Apply
      </button>
    </div>
  );
}
