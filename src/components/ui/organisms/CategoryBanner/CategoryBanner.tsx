import Heading from '@/components/ui/atoms/Heading/Heading';
import Text from '@/components/ui/atoms/Text/Text';
import styles from './CategoryBanner.module.css';

export interface CategoryBannerProps {
  title: string;
  description?: string;
  image?: string;
}

export default function CategoryBanner({ title, description, image }: CategoryBannerProps) {
  return (
    <section
      className={styles.banner}
      style={image ? { backgroundImage: `url(${image})` } : undefined}
    >
      <div className={styles.content}>
        <Heading level={1}>{title}</Heading>

        {description && <Text>{description}</Text>}
      </div>
    </section>
  );
}
