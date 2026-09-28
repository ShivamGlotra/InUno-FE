import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductGrid from './ProductGrid';
import { Product } from '@/types/productType';
import { ProductSampleData } from '../ProductList/sampleData';
import Image from 'next/image';

const meta: Meta<typeof ProductGrid> = {
  title: 'Organisms/ProductGrid',
  component: ProductGrid,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductGrid>;

export const Default: Story = {
  args: {
    children: (
      <>
        {ProductSampleData.map((product: Product) => (
          <div key={product.id} className="product-card">
            <Image src={product.image} alt={product.name} width={300} height={300} />
            <h3>{product.name}</h3>
            <p>${product.price.toFixed(2)}</p>
          </div>
        ))}
      </>
    ),
  },
};
