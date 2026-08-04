import type { Meta, StoryObj } from '@storybook/react-vite';
import ReviewSnippet from './ReviewSnippet';

const meta: Meta<typeof ReviewSnippet> = {
  title: 'Molecules/ReviewSnippet',
  component: ReviewSnippet,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ReviewSnippet>;

export const Default: Story = {
  args: {
    author: 'John Doe',
    rating: 5,
    title: 'Great product',
    content: 'The product works exactly as described.',
  },
};

export const FourStars: Story = {
  args: {
    author: 'Jane Doe',
    rating: 4,
    title: 'Very good',
    content: 'Good quality and fast delivery.',
  },
};
