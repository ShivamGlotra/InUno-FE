import ProductList from '@/components/ui/organisms/ProductList';
import { getProducts } from '@/lib/fetch-products';

type Props = {
  searchParams: Promise<{ search?: string; sort?: string; category?: string; page?: number }>;
};

const ProductsPage = async ({ searchParams }: Props) => {
  const { search, sort, category } = await searchParams;
  const products = await getProducts({ search, sort, category, page: 1 });

  return <ProductList products={products} />;
};

export default ProductsPage;
