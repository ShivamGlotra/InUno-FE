import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductCard from './ProductCard';

const meta: Meta<typeof ProductCard> = {
  title: 'Organisms/ProductCard',
  component: ProductCard,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductCard>;

export const Default: Story = {
  args: {
    image: '/images/products/headphones.jpg',
    discountPercent: 20,
    category: 'Electronics',
    name: 'Wireless Headphones',
    rating: 4.5,
    reviewCount: 120,
    price: 99.99,
    originalPrice: 149.99,
    isWishlisted: false,
    onWishlistToggle: () => alert('Wishlist toggled!'),
    onAddToCart: () => alert('Added to cart!'),
  },
};
