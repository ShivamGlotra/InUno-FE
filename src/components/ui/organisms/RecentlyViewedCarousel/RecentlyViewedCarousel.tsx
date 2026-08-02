import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./RecentlyViewedCarousel.module.css";

export default function RecentlyViewedCarousel() {
  return (
    <section>
      <Heading level={2}>Recently Viewed</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Product One"
          image="https://placehold.co/300x300"
          price={49.99}
        />

        <ProductCard
          name="Product Two"
          image="https://placehold.co/300x300"
          price={59.99}
        />

        <ProductCard
          name="Product Three"
          image="https://placehold.co/300x300"
          price={69.99}
        />
      </div>
    </section>
  );
}
