import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./DealOfTheDaySection.module.css";

export default function DealOfTheDaySection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Deal of the Day</Heading>

      <div className={styles.grid}>
        <ProductCard
          name="Wireless Headphones"
          image="https://placehold.co/300x300"
          price={79.99}
          originalPrice={99.99}
        />

        <ProductCard
          name="Smart Watch"
          image="https://placehold.co/300x300"
          price={129.99}
          originalPrice={159.99}
        />

        <ProductCard
          name="Bluetooth Speaker"
          image="https://placehold.co/300x300"
          price={49.99}
          originalPrice={69.99}
        />
      </div>
    </section>
  );
}
