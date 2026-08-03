import Label from '@/components/ui/atoms/Label/Label';
import Input from '@/components/ui/atoms/Input/Input';
import styles from './AddressFormRow.module.css';

export interface AddressFormRowProps {
  label: string;
  placeholder?: string;
  value?: string;
  required?: boolean;
}

export default function AddressFormRow({
  label,
  placeholder,
  value,
  required,
}: AddressFormRowProps) {
  return (
    <div className={styles.row}>
      <Label required={required}>{label}</Label>
      <Input placeholder={placeholder} defaultValue={value} />
    </div>
  );
}
