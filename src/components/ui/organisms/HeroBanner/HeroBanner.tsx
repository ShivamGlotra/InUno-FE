'use client';
import { useState } from 'react';
import Heading from '@/components/ui/atoms/Heading/Heading';
import Text from '@/components/ui/atoms/Text/Text';
import Button from '@/components/ui/atoms/Button/Button';
import Badge from '@/components/ui/atoms/Badge';
import styles from './HeroBanner.module.css';
import { ArrowIcon, SparkleIcon } from '@/components/common/customSVGIcons/LandingHeroBannerIcons';

export interface HeroStat {
  value: string;
  label: string;
}

export interface HeroBannerProps {
  eyebrow?: string;
  title: string;
  subtitle?: string;
  description?: string;
  buttonLabel?: string;
  secondaryButtonLabel?: string;
  imageUrl?: string;
  imageAlt?: string;
  stats?: HeroStat[];
}

export default function HeroBanner({
  eyebrow,
  title,
  subtitle,
  description,
  buttonLabel = 'Shop Now',
  secondaryButtonLabel,
  stats,
  imageUrl,
  imageAlt = '',
}: HeroBannerProps) {
  const [isLoading, setIsLoading] = useState(false);

  return (
    <section className={styles.hero}>
      <div className={styles.content}>
        {eyebrow && (
          <Badge variant="primary" size="md" pill className={styles.eyebrow}>
            {eyebrow}
          </Badge>
        )}
        <Heading level={1} fontSize="5xl" subtitle={subtitle}>
          {title}
        </Heading>

        {description && <Text>{description}</Text>}

        <div className={styles.buttonGrid}>
          <Button
            variant="primary"
            size="lg"
            href="/products"
            isLoading={isLoading}
            onClick={() => setIsLoading(true)}
          >
            <span className={styles.buttonContent}>
              {buttonLabel}
              <ArrowIcon />
            </span>
          </Button>
          {secondaryButtonLabel && (
            <Button variant="secondary" size="lg" href="/">
              <span className={styles.buttonContent}>
                <SparkleIcon />
                {secondaryButtonLabel}
              </span>{' '}
            </Button>
          )}
        </div>

        {stats && stats.length > 0 && (
          <ul className={styles.stats}>
            {stats.map((stat) => (
              <li key={stat.label} className={styles.stat}>
                <span className={styles.statValue}>{stat.value}</span>
                <span className={styles.statLabel}>{stat.label}</span>
              </li>
            ))}
          </ul>
        )}
      </div>
    </section>
  );
}
