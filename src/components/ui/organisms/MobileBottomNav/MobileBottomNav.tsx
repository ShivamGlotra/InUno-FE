import NavLink from '@/components/ui/molecules/NavLink/NavLink';
import styles from './MobileBottomNav.module.css';

export interface MobileBottomNavItem {
  label: string;
  href: string;
  active?: boolean;
}

export interface MobileBottomNavProps {
  items: MobileBottomNavItem[];
}

export default function MobileBottomNav({ items }: MobileBottomNavProps) {
  return (
    <nav className={styles.nav}>
      {items.map((item) => (
        <NavLink key={item.href} href={item.href} active={item.active}>
          {item.label}
        </NavLink>
      ))}
    </nav>
  );
}
