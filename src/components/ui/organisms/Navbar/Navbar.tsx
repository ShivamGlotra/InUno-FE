'use client';

import { useState } from 'react';
import NavLink from '@/components/ui/molecules/NavLink/NavLink';
import Link from '@/components/ui/atoms/Link/Link';
import styles from './Navbar.module.css';

export interface NavbarItem {
  label: string;
  href: string;
}

export interface NavbarProps {
  items?: NavbarItem[];
  activeHref?: string;
  className?: string;
}

const defaultItems: NavbarItem[] = [
  { label: 'All', href: '/' },
  { label: 'Electronics', href: '/electronics' },
  { label: 'Fashion', href: '/fashion' },
  { label: 'Home & Living', href: '/home-living' },
  { label: 'Sports', href: '/sports' },
  { label: 'Books', href: '/books' },
  { label: 'Beauty', href: '/beauty' },
  { label: 'Toys', href: '/toys' },
  { label: 'Automotive', href: '/automotive' },
  { label: 'Garden', href: '/garden' },
  { label: 'Health', href: '/health' },
  { label: 'Food & Grocery', href: '/food-grocery' },
  { label: 'Pets', href: '/pets' },
];

export default function Navbar({
  items = defaultItems,
  activeHref = '/',
  className = '',
}: NavbarProps) {
  const [isOpen, setIsOpen] = useState(false);

  return (
    <nav className={`${styles.navbar} ${className}`} aria-label="Category navigation">
      <div className={styles.container}>
        <button
          type="button"
          className={styles.menuButton}
          onClick={() => setIsOpen((prev) => !prev)}
          aria-expanded={isOpen}
          aria-label="Toggle navigation"
        >
          <span />
          <span />
          <span />
        </button>

        <div className={`${styles.navigation} ${isOpen ? styles.navigationOpen : ''}`}>
          <ul className={styles.navList}>
            {items.map((item) => (
              <li key={item.href} className={styles.navItem}>
                <NavLink href={item.href} active={activeHref === item.href}>
                  {item.label}
                </NavLink>
              </li>
            ))}
          </ul>

          <Link href="/sell" className={styles.sellLink}>
            Sell on InUno
            <span className={styles.arrow}>›</span>
          </Link>
        </div>
      </div>
    </nav>
  );
}
