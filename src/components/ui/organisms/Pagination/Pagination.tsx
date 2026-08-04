import Button from '@/components/ui/atoms/Button/Button';
import styles from './Pagination.module.css';

export interface PaginationProps {
  page: number;
  totalPages: number;
  onChange?: (page: number) => void;
}

export default function Pagination({ page, totalPages, onChange }: PaginationProps) {
  return (
    <nav className={styles.pagination}>
      <Button disabled={page <= 1} onClick={() => onChange?.(page - 1)}>
        Previous
      </Button>

      <span>
        Page {page} of {totalPages}
      </span>

      <Button disabled={page >= totalPages} onClick={() => onChange?.(page + 1)}>
        Next
      </Button>
    </nav>
  );
}
