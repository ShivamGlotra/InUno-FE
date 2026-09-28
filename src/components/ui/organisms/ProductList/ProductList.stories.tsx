import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductList from './ProductList';
import { ProductSampleData } from './sampledata';

const meta: Meta<typeof ProductList> = {
  title: 'Organisms/ProductList',
  component: ProductList,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductList>;

export const Default: Story = {
  args: {
    products: ProductSampleData,
  },
};
