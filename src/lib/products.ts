import { Product } from '@/types/productType';
import { ProductSampleData } from '@/components/ui/organisms/ProductList/sampledata'; // delete it after

type ProductParams = {
  search?: string;
  sort?: string;
  category?: string;
  page?: number;
};

type ProductByIDParams = { slug: string; id: string };

const PAGE_SIZE = 10; // Define the number of products per page

export const getProducts = async ({
  search,
  sort,
  category,
  page = 1,
}: ProductParams): Promise<Product[]> => {
  // To be implemented - Fetch products from API

  // const params = new URLSearchParams();
  // if (search) params.set('search', search);
  // if (sort) params.set('sort', sort);
  // if (category) params.set('category', category);
  // params.set('page', String(page));

  // // catching - Implement Later
  // const res = await fetch(`${process.env.API_URL}/products?${params}`, {
  //   cache: 'no-store', // or use revalidate depending on your caching strategy
  // });

  let products: Product[] = [...ProductSampleData]; // Replace with API response

  if (search) {
    const q = search.toLowerCase();
    products = products.filter(
      (p) =>
        p.name.toLowerCase().includes(q) ||
        p.description?.toLowerCase().includes(q) ||
        p.brand?.toLowerCase().includes(q),
    );
  }

  if (category) {
    products = products.filter((p) => p.category.toLowerCase() === category.toLowerCase());
  }

  switch (sort) {
    case 'price-asc':
      products.sort((a, b) => a.price - b.price);
      break;
    case 'price-desc':
      products.sort((a, b) => b.price - a.price);
      break;
    case 'rating':
      products.sort((a, b) => (b.rating ?? 0) - (a.rating ?? 0));
      break;
    case 'newest':
      products.sort((a, b) => b.createdAt.localeCompare(a.createdAt));
      break;
  }

  const start = (page - 1) * PAGE_SIZE;
  return products.slice(start, start + PAGE_SIZE);
};

export const getProductByID = async ({ slug, id }: ProductByIDParams): Promise<Product> => {
  const params = new URLSearchParams();
  params.set('slug', slug);
  params.set('id', id);

  // catching - Implement Later
  const res = await fetch(`${process.env.API_URL}/products?${params}`, {
    cache: 'no-store', // or use revalidate depending on your caching strategy
  });

  if (!res.ok) throw new Error('Failed to fetch products');
  return res.json();
};
