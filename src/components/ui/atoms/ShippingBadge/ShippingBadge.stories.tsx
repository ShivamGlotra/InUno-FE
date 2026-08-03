import type { Meta, StoryObj } from '@storybook/react-vite';
import ShippingBadge from './ShippingBadge';

const meta: Meta<typeof ShippingBadge> = {
  title: 'Atoms/ShippingBadge',
  component: ShippingBadge,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ShippingBadge>;

export const FreeShipping: Story = {
  args: {
    free: true,
  },
};

export const Custom: Story = {
  args: {
    children: 'Ships in 2 days',
  },
};
