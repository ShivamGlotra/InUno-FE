import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductImageCarousel from './ProductImageCarousel';
import { ProductSampleData } from '@/components/ui/organisms/ProductList/sampledata'; // delete it after

const meta: Meta<typeof ProductImageCarousel> = {
  title: 'Organisms/ProductImageCarousel',
  component: ProductImageCarousel,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductImageCarousel>;

export const Default: Story = {
  args: {
    alt: 'Product Image',
    productImage: ProductSampleData,
  },
};
