import ProductCard from '@/components/ui/organisms/ProductCard/ProductCard';
import Heading from '@/components/ui/atoms/Heading/Heading';
import styles from './ProductCarousel.module.css';
import { Product } from '@/types/productType';

export interface ProductCarouselProps {
  title?: string;
  products?: Product[];
}

export default function ProductCarousel({ title = 'Featured Products' }: ProductCarouselProps) {
  return (
    <section>
      <div className={styles.carousel}>
        <ProductCard
          product={{
            id: 'product-001',
            slug: 'wireless-headphones',
            name: 'Wireless Headphones',
            image: 'https://placehold.co/300x300',
            images: [
              {
                url: 'https://placehold.co/300x300',
                alt: 'Wireless Headphones',
              },
            ],
            price: 99.99,
            category: 'Electronics',
            rating: 4.5,
            reviewCount: 150,
            inStock: true,
            createdAt: '2026-09-26T00:00:00Z',
            updatedAt: '2026-09-26T00:00:00Z',
          }}
        />
        <ProductCard
          product={{
            id: 'product-002',
            slug: 'smartwatch',
            name: 'Smartwatch',
            image: 'https://placehold.co/300x300',
            images: [
              {
                url: 'https://placehold.co/300x300',
                alt: 'Smartwatch',
              },
            ],
            price: 199.99,
            category: 'Wearables',
            rating: 4.0,
            reviewCount: 80,
            inStock: true,
            createdAt: '2026-09-26T00:00:00Z',
            updatedAt: '2026-09-26T00:00:00Z',
          }}
        />
        <ProductCard
          product={{
            id: 'product-003',
            slug: 'gaming-laptop',
            name: 'Gaming Laptop',
            image: 'https://placehold.co/300x300',
            images: [
              {
                url: 'https://placehold.co/300x300',
                alt: 'Gaming Laptop',
              },
            ],
            price: 1299.99,
            category: 'Computers',
            rating: 4.8,
            reviewCount: 200,
            inStock: true,
            createdAt: '2026-09-26T00:00:00Z',
            updatedAt: '2026-09-26T00:00:00Z',
          }}
        />
        <ProductCard
          product={{
            id: 'product-004',
            slug: '4k-monitor',
            name: '4K Monitor',
            image: 'https://placehold.co/300x300',
            images: [
              {
                url: 'https://placehold.co/300x300',
                alt: '4K Monitor',
              },
            ],
            price: 399.99,
            category: 'Monitors',
            rating: 4.3,
            reviewCount: 120,
            inStock: true,
            createdAt: '2026-09-26T00:00:00Z',
            updatedAt: '2026-09-26T00:00:00Z',
          }}
        />
      </div>
    </section>
  );
}
