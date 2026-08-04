import ProductCard from '@/components/ui/organisms/ProductCard/ProductCard';
import Heading from '@/components/ui/atoms/Heading/Heading';
import styles from './RelatedProductsCarousel.module.css';

export default function RelatedProductsCarousel() {
  return (
    <section>
      <Heading level={2}>Related Products</Heading>

      <div className={styles.carousel}>
        <ProductCard
          name="Related Product One"
          image="https://placehold.co/300x300"
          price={39.99}
        />

        <ProductCard
          name="Related Product Two"
          image="https://placehold.co/300x300"
          price={59.99}
        />

        <ProductCard
          name="Related Product Three"
          image="https://placehold.co/300x300"
          price={89.99}
        />
      </div>
    </section>
  );
}
