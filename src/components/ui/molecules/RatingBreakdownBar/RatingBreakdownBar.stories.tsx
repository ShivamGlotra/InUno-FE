import type { Meta, StoryObj } from '@storybook/react-vite';
import RatingBreakdownBar from './RatingBreakdownBar';

const meta: Meta<typeof RatingBreakdownBar> = {
  title: 'Molecules/RatingBreakdownBar',
  component: RatingBreakdownBar,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof RatingBreakdownBar>;

export const HighRating: Story = {
  args: {
    rating: 5,
    percentage: 72,
  },
};

export const LowRating: Story = {
  args: {
    rating: 2,
    percentage: 8,
  },
};
