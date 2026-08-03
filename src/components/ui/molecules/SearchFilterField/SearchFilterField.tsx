import SearchInput from '@/components/ui/atoms/SearchInput/SearchInput';
import Select from '@/components/ui/atoms/Select/Select';
import styles from './SearchFilterField.module.css';

export interface SearchFilterFieldProps {
  placeholder?: string;
}

export default function SearchFilterField({ placeholder = 'Search...' }: SearchFilterFieldProps) {
  return (
    <div className={styles.field}>
      <SearchInput placeholder={placeholder} />

      <Select
        options={[
          { label: 'All', value: 'all' },
          { label: 'Products', value: 'products' },
          { label: 'Categories', value: 'categories' },
        ]}
      />
    </div>
  );
}
