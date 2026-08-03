import Radio from '@/components/ui/atoms/Radio/Radio';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './PaymentMethodOption.module.css';

export interface PaymentMethodOptionProps {
  id: string;
  name: string;
  description?: string;
  selected?: boolean;
}

export default function PaymentMethodOption({
  id,
  name,
  description,
  selected,
}: PaymentMethodOptionProps) {
  return (
    <label className={`${styles.option} ${selected ? styles.selected : ''}`}>
      <Radio name="payment-method" value={id} defaultChecked={selected} />

      <div>
        <Text>{name}</Text>
        {description && <Text size="sm">{description}</Text>}
      </div>
    </label>
  );
}
