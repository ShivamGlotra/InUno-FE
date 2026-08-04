import type { Meta, StoryObj } from '@storybook/react-vite';
import DiscountBadge from './DiscountBadge';

const meta: Meta<typeof DiscountBadge> = {
  title: 'Atoms/DiscountBadge',
  component: DiscountBadge,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof DiscountBadge>;

export const TenPercent: Story = {
  args: {
    percentage: 10,
  },
};

export const TwentyFivePercent: Story = {
  args: {
    percentage: 25,
  },
};

export const FiftyPercent: Story = {
  args: {
    percentage: 50,
  },
};
