import Link from 'next/link';
import styles from './Footer.module.css';
import Image from '@/components/ui/atoms/Image';

export interface FooterLink {
  label: string;
  href: string;
}

export interface FooterColumn {
  title: string;
  links: FooterLink[];
}

export interface FooterProps {
  tagline?: string;
  columns?: FooterColumn[];
  /** Replaces the default logo mark + wordmark */
  logoSrc?: string;
}

const DEFAULT_COLUMNS: FooterColumn[] = [
  {
    title: 'Shop',
    links: [
      { label: 'Products', href: '/products' },
      { label: 'Categories', href: '/categories' },
      { label: 'Deals', href: '/deals' },
    ],
  },
  {
    title: 'Support',
    links: [
      { label: 'Contact', href: '/contact' },
      { label: 'Shipping', href: '/shipping' },
      { label: 'Returns', href: '/returns' },
    ],
  },
];

const Footer = ({
  tagline = 'Everything you want. One clean place.',
  columns = DEFAULT_COLUMNS,
  logoSrc,
}: FooterProps) => {
  return (
    <footer className={styles.footer}>
      <main className="container">
        <div className={styles.top}>
          <div className={styles.brand}>
            <Link href="/" className={styles.logo} aria-label="InUno home">
              {logoSrc ? (
                <Image src={logoSrc} alt="InUno" height={36} />
              ) : (
                <>
                  <span className={styles.brandMark} aria-hidden="true">
                    <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                      <path
                        d="M5 8h14l-1 11a2 2 0 0 1-2 1.8H8A2 2 0 0 1 6 19L5 8z"
                        stroke="currentColor"
                        strokeWidth="1.8"
                        strokeLinejoin="round"
                      />
                      <path
                        d="M9 8V7a3 3 0 0 1 6 0v1"
                        stroke="currentColor"
                        strokeWidth="1.8"
                        strokeLinecap="round"
                      />
                    </svg>
                  </span>
                  <span className={styles.wordmark}>InUno</span>
                </>
              )}
            </Link>
            <p className={styles.tagline}>{tagline}</p>
          </div>

          {columns.map((column) => (
            <nav key={column.title} className={styles.column} aria-label={column.title}>
              <h2 className={styles.columnTitle}>{column.title}</h2>
              {column.links.map((link) => (
                <Link key={link.href} href={link.href} className={styles.link}>
                  {link.label}
                </Link>
              ))}
            </nav>
          ))}
        </div>

        <div className={styles.bottom}>
          © {new Date().getFullYear()} InUno. All rights reserved.
        </div>
      </main>
    </footer>
  );
};

export default Footer;
