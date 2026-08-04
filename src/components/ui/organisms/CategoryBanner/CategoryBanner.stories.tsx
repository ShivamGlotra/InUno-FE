import type { Meta, StoryObj } from '@storybook/react-vite';
import CategoryBanner from './CategoryBanner';

const meta: Meta<typeof CategoryBanner> = {
  title: 'Organisms/CategoryBanner',
  component: CategoryBanner,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof CategoryBanner>;

export const Default: Story = {
  args: {
    title: 'Electronics',
    description: 'Discover our latest electronics and accessories.',
  },
};
