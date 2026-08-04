'use client';

import { useState } from 'react';
import QuantityStepperButton from '@/components/ui/atoms/QuantityStepperButton/QuantityStepperButton';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './QuantitySelector.module.css';

export interface QuantitySelectorProps {
  initialQuantity?: number;
  min?: number;
  max?: number;
}

export default function QuantitySelector({
  initialQuantity = 1,
  min = 1,
  max = 99,
}: QuantitySelectorProps) {
  const [quantity, setQuantity] = useState(initialQuantity);

  return (
    <div className={styles.selector}>
      <QuantityStepperButton
        action="decrease"
        disabled={quantity <= min}
        onClick={() => setQuantity((value) => Math.max(min, value - 1))}
      />

      <Text>{quantity}</Text>

      <QuantityStepperButton
        action="increase"
        disabled={quantity >= max}
        onClick={() => setQuantity((value) => Math.min(max, value + 1))}
      />
    </div>
  );
}
