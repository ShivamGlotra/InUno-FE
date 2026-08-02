import ProductCard from "@/components/ui/organisms/ProductCard/ProductCard";
import styles from "./ProductGrid.module.css";

export interface ProductGridProps {
  count?: number;
}

export default function ProductGrid({
  count = 6,
}: ProductGridProps) {
  return (
    <div className={styles.grid}>
      {Array.from({ length: count }).map((_, index) => (
        <ProductCard
          key={index}
          name={`Product ${index + 1}`}
          image="https://placehold.co/300x300"
          price={49.99 + index * 10}
          rating={4}
        />
      ))}
    </div>
  );
}
