import styles from './Logo.module.css';
import Image from '@/components/ui/atoms/Image/Image';
export interface LogoProps {
  text?: string;
  src?: string;
  alt?: string;
}

export default function Logo({ text = 'Logo', src, alt = 'Logo' }: LogoProps) {
  if (src) {
    return <Image src={src} alt={alt} className={styles.image} width={100} height={100} />;
  }

  return <span className={styles.logo}>{text}</span>;
}
