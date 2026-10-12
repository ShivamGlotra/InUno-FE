import Link from '@/components/ui/atoms/Link/Link';
import styles from './Header.module.css';

export interface HeaderProps {
  /** Text shown in the thin black strip. Leave empty for a plain strip. */
  text?: string;
  /** Optional link that wraps the text */
  href?: string;
  className?: string;
}

export default function Header({ text, href, className = '' }: HeaderProps) {
  return (
    <div
      className={`${styles.header} ${className}`}
      role={text ? 'region' : undefined}
      aria-label={text ? 'Announcement' : undefined}
    >
      {text &&
        (href ? (
          <Link href={href} className={styles.link}>
            {text}
          </Link>
        ) : (
          <span>{text}</span>
        ))}
    </div>
  );
}
