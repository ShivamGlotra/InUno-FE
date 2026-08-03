import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductThumbnail from './ProductThumbnail';

const meta: Meta<typeof ProductThumbnail> = {
  title: 'Molecules/ProductThumbnail',
  component: ProductThumbnail,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductThumbnail>;

export const Default: Story = {
  args: {
    src: 'https://placehold.co/300x300',
    alt: 'Product',
  },
};

export const WithoutWishlist: Story = {
  args: {
    src: 'https://placehold.co/300x300',
    alt: 'Product',
    wishlist: false,
  },
};
