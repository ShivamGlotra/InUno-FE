import HeroBanner, { type HeroBannerProps } from '@/components/ui/organisms/HeroBanner/HeroBanner';
import Image from '@/components/ui/atoms/Image/Image';
import styles from './LandingHeroBanner.module.css';

const FALLBACK_LIFESTYLE_IMAGE = 'https://picsum.photos/seed/picsum/1200/900';

const DEFAULT_HERO_BANNER_PROPS: HeroBannerProps = {
  title: 'Summer Sale',
  subtitle: 'Up to 50% off',
  description:
    "Discover our exclusive summer collection and enjoy amazing discounts on your favorite products. Don't miss out on this limited-time offer!",
  buttonLabel: 'Shop Now',
  secondaryButtonLabel: 'Ask Assistant',
  stats: [
    { value: '2M+', label: 'Products' },
    { value: '4.8★', label: 'Avg rating' },
    { value: '24h', label: 'Fast delivery' },
  ],
};

export type LandingHeroBannerProps = {
  /** Pill shown above the heading inside the banner, e.g. "Exclusive Offer" */
  badgeTitle?: string;
  heroBannerProps?: Partial<HeroBannerProps>;
  lifestyleImage?: string;
};

const LandingHeroBanner = ({
  badgeTitle,
  heroBannerProps,
  lifestyleImage = FALLBACK_LIFESTYLE_IMAGE,
}: LandingHeroBannerProps) => {
  return (
    <section className={styles.landingHeroBanner} aria-label="Featured offer">
      <div className={styles.content}>
        <div className={styles.bannerContainer}>
          <HeroBanner {...DEFAULT_HERO_BANNER_PROPS} eyebrow={badgeTitle} {...heroBannerProps} />
        </div>

        <div className={styles.imageContainer}>
          <Image className={styles.image} src={lifestyleImage} alt="" width={1200} height={900} />
        </div>
      </div>
    </section>
  );
};

export default LandingHeroBanner;
