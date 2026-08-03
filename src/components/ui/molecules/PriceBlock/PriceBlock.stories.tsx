import type { Meta, StoryObj } from '@storybook/react-vite';
import PriceBlock from './PriceBlock';

const meta: Meta<typeof PriceBlock> = {
  title: 'Molecules/PriceBlock',
  component: PriceBlock,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof PriceBlock>;

export const Regular: Story = {
  args: {
    price: 49.99,
  },
};

export const Discounted: Story = {
  args: {
    price: 39.99,
    originalPrice: 49.99,
    discount: 20,
  },
};
