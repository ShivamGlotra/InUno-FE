import type { Meta, StoryObj } from '@storybook/react';
import StockDot from './StockDot';

const meta: Meta<typeof StockDot> = {
  title: 'Atoms/StockDot',
  component: StockDot,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof StockDot>;

export const InStock: Story = {
  args: {
    status: 'in-stock',
  },
};

export const LowStock: Story = {
  args: {
    status: 'low-stock',
  },
};

export const OutOfStock: Story = {
  args: {
    status: 'out-of-stock',
  },
};
