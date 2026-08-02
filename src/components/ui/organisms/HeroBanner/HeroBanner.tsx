import Heading from "@/components/ui/atoms/Heading/Heading";
import Text from "@/components/ui/atoms/Text/Text";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./HeroBanner.module.css";

export interface HeroBannerProps {
  title: string;
  description?: string;
  buttonLabel?: string;
  image?: string;
}

export default function HeroBanner({
  title,
  description,
  buttonLabel = "Shop Now",
  image,
}: HeroBannerProps) {
  return (
    <section
      className={styles.hero}
      style={image ? { backgroundImage: `url(${image})` } : undefined}
    >
      <div className={styles.content}>
        <Heading level={1}>{title}</Heading>

        {description && <Text>{description}</Text>}

        <Button>{buttonLabel}</Button>
      </div>
    </section>
  );
}
