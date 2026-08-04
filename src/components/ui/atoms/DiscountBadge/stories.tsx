import type { Meta, StoryObj } from '@storybook/react';
import DiscountBadge from './DiscountBadge';

const meta: Meta<typeof DiscountBadge> = {
  title: 'Atoms/DiscountBadge',
  component: DiscountBadge,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof DiscountBadge>;

export const Default: Story = {
  args: {
    percentage: 20,
  },
};

export const LargeDiscount: Story = {
  args: {
    percentage: 50,
  },
};
