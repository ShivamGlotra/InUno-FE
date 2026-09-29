import BreadcrumbBar from '../BreadcrumbBar';
import ProductImageCarousel from '../ProductImageCarousel';
import { Product } from '@/types/productType';

type ProductDetailProps = {
  product: Product;
};

const ProductDetail = ({ product }: ProductDetailProps) => {
  return (
    <div>
      <BreadcrumbBar
        items={[
          { label: 'Home', href: '/' },
          { label: 'Products', href: '/products' },
          { label: product.name, href: `/products/${product.slug}/${product.id}` },
        ]}
      />
      <h1>{product.name}</h1>
      <p>{product.description}</p>
      <p>Price: ${product.price}</p>
      <ProductImageCarousel productImage={product.images} />
    </div>
  );
};

export default ProductDetail;
