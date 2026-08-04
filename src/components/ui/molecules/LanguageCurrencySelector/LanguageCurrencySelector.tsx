import Select from '@/components/ui/atoms/Select/Select';
import styles from './LanguageCurrencySelector.module.css';

export interface LanguageCurrencySelectorProps {
  language?: string;
  currency?: string;
}

export default function LanguageCurrencySelector({
  language = 'English',
  currency = 'CAD',
}: LanguageCurrencySelectorProps) {
  return (
    <div className={styles.selector}>
      <Select options={[{ label: language, value: language }]} />

      <Select options={[{ label: currency, value: currency }]} />
    </div>
  );
}
