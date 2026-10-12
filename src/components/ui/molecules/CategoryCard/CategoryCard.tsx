import type { CSSProperties } from 'react';
import Image from 'next/image';
import Link from 'next/link';
import Badge from '@/components/ui/atoms/Badge/Badge';
import Heading from '@/components/ui/atoms/Heading/Heading';
import styles from './CategoryCard.module.css';

export interface CategoryCardProps {
  name: string;
  itemCount: number | string;
  href: string;
  badge?: string;
  /** Soft background tint behind the picture, e.g. "#e9eeff" */
  tint?: string;
  imageSrc: string;
  imageAlt?: string;
  className?: string;
}

const CategoryCard = ({
  name,
  itemCount,
  href,
  badge,
  tint,
  imageSrc,
  imageAlt = '',
  className,
}: CategoryCardProps) => {
  const style = tint ? ({ '--card-tint': tint } as CSSProperties) : undefined;

  return (
    <Link
      href={href}
      className={[styles.card, className].filter(Boolean).join(' ')}
      style={style}
      aria-label={`${name}, ${itemCount} items`}
    >
      <div className={styles.media}>
        {badge && (
          <div className={styles.badge}>
            <Badge>{badge}</Badge>
          </div>
        )}

        <Image
          className={styles.image}
          src={imageSrc}
          alt={imageAlt}
          fill
          sizes="(max-width: 768px) 100vw, 400px"
        />
      </div>

      <div className={styles.footer}>
        <div className={styles.text}>
          <Heading level={3} fontSize="xl" weight="bold">
            {name}
          </Heading>
          <span className={styles.count}>{itemCount} items</span>
        </div>

        <span className={styles.arrow} aria-hidden="true">
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
            <path
              d="M5 12h14M13 6l6 6-6 6"
              stroke="currentColor"
              strokeWidth="1.8"
              strokeLinecap="round"
              strokeLinejoin="round"
            />
          </svg>
        </span>
      </div>
    </Link>
  );
};

export default CategoryCard;
