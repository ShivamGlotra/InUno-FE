import ProductDetail from '@/components/ui/organisms/ProductDetail/ProductDetail';
import { getProductByID } from '@/lib/fetch-products';

type Props = {
  params: Promise<{ slug: string; id: string }>;
};

const ProductDetailPage = async ({ params }: Props) => {
  const { slug, id } = await params;

  console.log('Params:', { slug, id });

  const products = await getProductByID({ slug, id });

  return <ProductDetail product={products} />;
};

export default ProductDetailPage;
