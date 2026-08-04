import ProductCard from '@/components/ui/organisms/ProductCard/ProductCard';
import Heading from '@/components/ui/atoms/Heading/Heading';
import styles from './WishlistGrid.module.css';

export default function WishlistGrid() {
  return (
    <section>
      <Heading level={1}>My Wishlist</Heading>

      <div className={styles.grid}>
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
