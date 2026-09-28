import styles from './ProductGrid.module.css';

// export interface ProductGridProps {
//   count?: number;
// }

const ProductGrid = ({ children }: { children: React.ReactNode }) => {
  console.log('ProductGrid children:', children);
  return (
    <div className={styles.grid}>
      {/* {Array.from({ length: count }).map((_, index) => (
        <ProductCard
          key={index}
          name={`Product ${index + 1}`}
          image="https://placehold.co/300x300"
          price={49.99 + index * 10}
          rating={4}
          category="Category"
          reviewCount={100}
        />
      ))} */}
      {children}
    </div>
  );
};

export default ProductGrid;
