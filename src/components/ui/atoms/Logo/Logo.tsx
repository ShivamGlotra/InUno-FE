import Link from '../Link';
import styles from './Logo.module.css';
import Image from '@/components/ui/atoms/Image/Image';
export interface LogoProps {
  text?: string;
  src?: string;
  alt?: string;
  href?: string;
}

export default function Logo({ text = 'Logo', src, alt = 'Logo', href }: LogoProps) {
  if (src) {
    return (
      <Link href={href}>
        <Image src={src} alt={alt} className={styles.image} width={100} height={100} />
      </Link>
    );
  }

  return <span className={styles.logo}>{text}</span>;
}
