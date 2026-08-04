import type { Meta, StoryObj } from '@storybook/react-vite';
import HeroBanner from './HeroBanner';

const meta: Meta<typeof HeroBanner> = {
  title: 'Organisms/HeroBanner',
  component: HeroBanner,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof HeroBanner>;

export const Default: Story = {
  args: {
    title: 'Everything you need, all in one place.',
    description: 'Discover our latest products and deals.',
  },
};
