import HeroBanner, { type HeroBannerProps } from '@/components/ui/organisms/HeroBanner/HeroBanner';
import Badge from '@/components/ui/atoms/Badge/Badge';
import Image from '@/components/ui/atoms/Image/Image';
import styles from './LandingHeroBanner.module.css';

const FALLBACK_LIFESTYLE_IMAGE =
  'https://assets.clevelandclinic.org/transform/LargeFeatureImage/00bac75d-eb67-4b75-91be-c4f813a2b284/shopaholic-1413705487';

const DEFAULT_HERO_BANNER_PROPS: HeroBannerProps = {
  title: 'Summer Sale',
  subtitle: 'Up to 50% off',
  description:
    "Discover our exclusive summer collection and enjoy amazing discounts on your favorite products. Don't miss out on this limited-time offer!",
  buttonLabel: 'Shop Now',
};

export type LandingHeroBannerProps = {
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
    <div className={styles.landingHeroBanner}>
      {/* {badgeTitle && (
        <Badge variant="primary" size="md" pill className={styles.badge}>
          {badgeTitle}
        </Badge>
      )} */}

      <div className={styles.content}>
        <div className={styles.bannerContainer}>
          <HeroBanner {...DEFAULT_HERO_BANNER_PROPS} {...heroBannerProps} />
        </div>

        <div className={styles.imageContainer}>
          <Image className={styles.image} src={lifestyleImage} alt="" width={1200} height={900} />
        </div>
      </div>
    </div>
  );
};

export default LandingHeroBanner;
