import type { Meta, StoryObj } from '@storybook/react-vite';
import CartLineItemSummary from './CartLineItemSummary';

const meta: Meta<typeof CartLineItemSummary> = {
  title: 'Molecules/CartLineItemSummary',
  component: CartLineItemSummary,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof CartLineItemSummary>;

export const Default: Story = {
  args: {
    name: 'Wireless Headphones',
    image: '/images/placeholder.png',
    quantity: 2,
    price: 49.99,
  },
};
