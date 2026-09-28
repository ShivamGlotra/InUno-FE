import ProductCard from '@/components/ui/organisms/ProductCard';
import ProductGrid from '@/components/ui/organisms/ProductGrid';
import { Product } from '@/types/productType';

type ProductListProps = {
  products: Product[];
};

const ProductList = ({ products }: ProductListProps) => {
  if (!products || products.length === 0) {
    return <p>No products found.</p>;
  }

  return (
    <div>
      <ProductGrid>
        {products.map((product) => (
          <ProductCard key={product.id} product={product} />
        ))}
      </ProductGrid>
    </div>
  );
};

export default ProductList;
