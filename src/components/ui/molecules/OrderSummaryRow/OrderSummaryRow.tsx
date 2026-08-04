import Price from '@/components/ui/atoms/Price/Price';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './OrderSummaryRow.module.css';

export interface OrderSummaryRowProps {
  label: string;
  amount: number;
  emphasized?: boolean;
}

export default function OrderSummaryRow({
  label,
  amount,
  emphasized = false,
}: OrderSummaryRowProps) {
  return (
    <div className={`${styles.row} ${emphasized ? styles.emphasized : ''}`}>
      <Text>{label}</Text>
      <Price amount={amount} />
    </div>
  );
}
