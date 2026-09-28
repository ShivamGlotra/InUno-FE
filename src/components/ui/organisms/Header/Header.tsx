import Logo from '@/components/ui/atoms/Logo/Logo';
import SearchBar from '@/components/ui/molecules/SearchBar/SearchBar';
import AccountMenuTrigger from '@/components/ui/molecules/AccountMenuTrigger/AccountMenuTrigger';
import styles from './Header.module.css';

export default function Header() {
  return (
    <header className={styles.header}>
      <Logo src="/images/header_logo.png" alt="Logo" text="Logo" href="/" />

      <div className={styles.search}>
        <SearchBar placeholder="Search products..." />
      </div>

      <AccountMenuTrigger name="Account" />
    </header>
  );
}
