'use client';
import { useState } from 'react';
import Heading from '@/components/ui/atoms/Heading/Heading';
import Text from '@/components/ui/atoms/Text/Text';
import Button from '@/components/ui/atoms/Button/Button';
import Image from '@/components/ui/atoms/Image/Image';
import styles from './HeroBanner.module.css';

export interface HeroBannerProps {
  title: string;
  subtitle?: string;
  description?: string;
  buttonLabel?: string;
  secondaryButtonLabel?: string;
  imageUrl?: string;
  imageAlt?: string;
}

export default function HeroBanner({
  title,
  subtitle,
  description,
  buttonLabel = 'Shop Now',
  secondaryButtonLabel,
  imageUrl,
  imageAlt = '',
}: HeroBannerProps) {
  const [isLoading, setIsLoading] = useState(false);

  return (
    <section className={styles.hero}>
      <div className={styles.content}>
        <Heading level={1}>
          {title}
          {subtitle && <em className={styles.subtitle}>{subtitle}</em>}
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
            {buttonLabel}
          </Button>
          {secondaryButtonLabel && (
            <Button variant="secondary" size="lg" href="/">
              {secondaryButtonLabel}
            </Button>
          )}
        </div>
      </div>
    </section>
  );
}
