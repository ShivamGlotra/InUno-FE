'use client';

import { useEffect, useState } from 'react';
import NavLink from '@/components/ui/molecules/NavLink/NavLink';
import Link from '@/components/ui/atoms/Link/Link';
import styles from './Navbar.module.css';
import {
  ChevronIcon,
  SearchIcon,
  AccountIcon,
  BagIcon,
  CloseIcon,
  BrandMark,
} from '@/components/common/customSVGIcons/navbarIcons';
import { useRef } from 'react';
import Image from '@/components/ui/atoms/Image/Image';
import { useRouter } from 'next/navigation';

export interface NavbarItem {
  label: string;
  href: string;
  children?: NavbarItem[];
}

export interface NavbarProps {
  items?: NavbarItem[];
  activeHref?: string;
  className?: string;
  brandName?: string;
  brandTagline?: string;
  logoSrc?: string;
  onSearch?: (query: string) => void;
  searchPlaceholder?: string;
  accountHref?: string;
  cartHref?: string;
}

const defaultItems: NavbarItem[] = [
  { label: 'Home', href: '/' },
  {
    label: 'Shop',
    href: '/products',
    children: [
      { label: 'All products', href: '/products' },
      { label: 'New arrivals', href: '/shop/new' },
      { label: 'Best sellers', href: '/shop/best-sellers' },
    ],
  },
  {
    label: 'Product',
    href: '/products',
    children: [
      { label: 'Face', href: '/product/face' },
      { label: 'Body', href: '/product/body' },
      { label: 'Sets', href: '/product/sets' },
    ],
  },
  { label: 'About', href: '/about' },
];

export default function Navbar({
  items = defaultItems,
  activeHref = '/',
  className = '',
  brandName = 'InUno',
  brandTagline = 'Your one-stop shop for all your needs',
  logoSrc = '/images/header_logo.png',
  onSearch,
  searchPlaceholder = 'Search InUNO',
  accountHref = '/account',
  cartHref = '/cart',
}: NavbarProps) {
  const router = useRouter();

  const [isSubLinkOpen, setisSubLinkOpen] = useState(false);
  const [openDropdown, setOpenDropdown] = useState<string | null>(null);
  const [isSearchOpen, setisSearchOpen] = useState(false);
  const [query, setQuery] = useState('');

  const navRef = useRef<HTMLDivElement>(null);
  const searchRef = useRef<HTMLFormElement>(null);
  const searchInputRef = useRef<HTMLInputElement>(null);

  const closeSearch = () => {
    setisSearchOpen(false);
    setQuery('');
  };

  const openSearch = () => {
    setOpenDropdown(null);
    setisSubLinkOpen(false);
    setisSearchOpen(true);
  };

  useEffect(() => {
    const handleClick = (event: MouseEvent) => {
      const target = event.target as Node;

      if (navRef.current && !navRef.current.contains(target)) setOpenDropdown(null);
      if (searchRef.current && !searchRef.current.contains(target)) closeSearch();
    };
    const handleKey = (event: KeyboardEvent) => {
      if (event.key === 'Escape') {
        setOpenDropdown(null);
        closeSearch();
      }
    };
    document.addEventListener('mousedown', handleClick);
    document.addEventListener('keydown', handleKey);
    return () => {
      document.addEventListener('mousedown', handleClick);
      document.addEventListener('keydown', handleKey);
    };
  }, []);

  // focus on the search bar soon it opens
  useEffect(() => {
    if (isSearchOpen) searchInputRef.current?.focus();
  }, [isSearchOpen]);

  const handleSubmitSearch = (event: React.SubmitEvent<HTMLFormElement>) => {
    event.preventDefault();
    const trimmed = query.trim();
    if (!trimmed) return;

    if (onSearch) {
      onSearch(trimmed);
    } else {
      router.push(`/search?q=${encodeURIComponent(trimmed)}`);
    }
    closeSearch();
  };

  const toggleDropdown = (label: string) =>
    setOpenDropdown((current) => (current === label ? null : label));

  return (
    <header className={`${styles.header} ${className}`}>
      <nav ref={navRef} className={styles.navbar} aria-label="Main navigation">
        <div className={styles.container}>
          {/* Logo */}
          <Link href="/" className={styles.brand} aria-label={`${brandName} home`}>
            {logoSrc ? (
              <Image className={styles.logoImage} src={logoSrc} alt={brandName} />
            ) : (
              <>
                <span className={styles.brandMark}>
                  <BrandMark />
                </span>
                <span className={styles.brandName}>{brandName}</span>
              </>
            )}
          </Link>

          <div className={`${styles.navigation} ${isSubLinkOpen ? styles.navigationOpen : ''}`}>
            <ul className={styles.navList}>
              {items.map((item) => {
                const hasChildren = !!item.children?.length;
                const isDropdownOpen = openDropdown === item.label;

                return (
                  <li key={item.label} className={styles.navItem}>
                    {hasChildren ? (
                      <>
                        <button
                          type="button"
                          className={styles.dropdownTrigger}
                          aria-expanded={isDropdownOpen}
                          aria-haspopup="true"
                          onClick={() => toggleDropdown(item.label)}
                        >
                          {item.label}
                          {isDropdownOpen ? (
                            <ChevronIcon direction="up" />
                          ) : (
                            <ChevronIcon direction="down" />
                          )}
                        </button>

                        <ul
                          className={`${styles.dropdown} ${isDropdownOpen ? styles.dropdownOpen : ''}`}
                        >
                          {item.children!.map((child) => (
                            <li key={child.href}>
                              <Link href={child.href} className={styles.dropdownLink}>
                                {child.label}
                              </Link>
                            </li>
                          ))}
                        </ul>
                      </>
                    ) : (
                      <NavLink href={item.href} active={activeHref === item.href}>
                        {item.label}
                      </NavLink>
                    )}
                  </li>
                );
              })}
            </ul>
          </div>

          {/* Right: search bar (when open) sits in the gap before the icons */}
          <div className={styles.actions}>
            {isSearchOpen ? (
              <form
                ref={searchRef}
                className={styles.searchForm}
                role="search"
                onSubmit={handleSubmitSearch}
              >
                <span className={styles.searchIcon}>
                  <SearchIcon size={18} />
                </span>
                <input
                  ref={searchInputRef}
                  type="search"
                  className={styles.searchInput}
                  value={query}
                  onChange={(event) => setQuery(event.target.value)}
                  placeholder={searchPlaceholder}
                  aria-label="Search"
                  autoComplete="off"
                />
                <kbd className={styles.escHint}>Esc</kbd>
                <button
                  type="button"
                  className={styles.searchClose}
                  aria-label="Close search"
                  onClick={closeSearch}
                >
                  <CloseIcon />
                </button>
              </form>
            ) : (
              <button
                type="button"
                className={styles.iconButton}
                aria-label="Search"
                onClick={openSearch}
              >
                <SearchIcon />
              </button>
            )}

            <Link href={accountHref} className={styles.iconButton} aria-label="Account">
              <AccountIcon />
            </Link>
            <Link href={cartHref} className={styles.iconButton} aria-label="Cart">
              <BagIcon />
            </Link>

            <button
              type="button"
              className={styles.menuButton}
              onClick={() => setisSubLinkOpen((prev) => !prev)}
              aria-expanded={isSubLinkOpen}
              aria-label="Toggle navigation"
            >
              <span />
              <span />
              <span />
            </button>
          </div>
        </div>
      </nav>
    </header>
  );
}
