import NavLink from '@/components/ui/molecules/NavLink/NavLink';
import styles from './AccountSidebar.module.css';

export interface AccountSidebarItem {
  label: string;
  href: string;
  active?: boolean;
}

export interface AccountSidebarProps {
  items: AccountSidebarItem[];
}

export default function AccountSidebar({ items }: AccountSidebarProps) {
  return (
    <aside className={styles.sidebar}>
      <nav>
        {items.map((item) => (
          <NavLink key={item.href} href={item.href} active={item.active}>
            {item.label}
          </NavLink>
        ))}
      </nav>
    </aside>
  );
}
