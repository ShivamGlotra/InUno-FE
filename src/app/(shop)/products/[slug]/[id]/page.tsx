import { getProductByID } from '@/lib/products';

type Props = {
  searchParams: Promise<{ slug: string; id: string }>;
};

const ProductsPage = async ({ searchParams }: Props) => {
  const { slug, id } = await searchParams;
  const products = await getProductByID({ slug, id });

  return <>{products.name}</>;
};

export default ProductsPage;
