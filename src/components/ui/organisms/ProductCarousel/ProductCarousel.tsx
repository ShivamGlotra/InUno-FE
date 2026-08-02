import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ProductCarousel.module.css";

export interface ProductCarouselProps {
  title?: string;
}

export default function ProductCarousel({
  title = "Featured Products",
}: ProductCarouselProps) {
  return (
    <section>
      <Heading level={2}>{title}</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Wireless Headphones"
          image="https://placehold.co/300x300"
          price={79.99}
          rating={4.5}
        />

        <ProductCard
          name="Smart Watch"
          image="https://placehold.co/300x300"
          price={129.99}
          rating={4}
        />

        <ProductCard
          name="Bluetooth Speaker"
          image="https://placehold.co/300x300"
          price={49.99}
          rating={4.5}
        />
      </div>
    </section>
  );
}
