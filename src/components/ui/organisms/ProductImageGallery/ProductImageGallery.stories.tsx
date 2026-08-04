import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductImageGallery from './ProductImageGallery';

const meta: Meta<typeof ProductImageGallery> = {
  title: 'Organisms/ProductImageGallery',
  component: ProductImageGallery,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductImageGallery>;

export const Default: Story = {
  args: {
    images: [
      {
        src: 'https://placehold.co/600x600',
        alt: 'Product front',
      },
      {
        src: 'https://placehold.co/600x600',
        alt: 'Product side',
      },
      {
        src: 'https://placehold.co/600x600',
        alt: 'Product back',
      },
    ],
  },
};
