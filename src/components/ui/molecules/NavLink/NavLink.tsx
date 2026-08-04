import Link from '@/components/ui/atoms/Link/Link';
import styles from './NavLink.module.css';

export interface NavLinkProps {
  href: string;
  children: React.ReactNode;
  active?: boolean;
}

export default function NavLink({ href, children, active = false }: NavLinkProps) {
  return (
    <Link href={href} className={active ? styles.active : styles.link}>
      {children}
    </Link>
  );
}
