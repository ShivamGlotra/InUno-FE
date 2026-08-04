import type { Meta, StoryObj } from '@storybook/react-vite';
import OrderSummaryRow from './OrderSummaryRow';

const meta: Meta<typeof OrderSummaryRow> = {
  title: 'Molecules/OrderSummaryRow',
  component: OrderSummaryRow,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof OrderSummaryRow>;

export const Subtotal: Story = {
  args: {
    label: 'Subtotal',
    amount: 99.99,
  },
};

export const Total: Story = {
  args: {
    label: 'Total',
    amount: 109.99,
    emphasized: true,
  },
};
