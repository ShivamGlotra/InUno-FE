import type { Meta, StoryObj } from '@storybook/react-vite';
import MobileBottomNav from './MobileBottomNav';

const meta: Meta<typeof MobileBottomNav> = {
  title: 'Organisms/MobileBottomNav',
  component: MobileBottomNav,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof MobileBottomNav>;

export const Default: Story = {
  args: {
    items: [
      { label: 'Home', href: '#', active: true },
      { label: 'Search', href: '#' },
      { label: 'Cart', href: '#' },
      { label: 'Account', href: '#' },
    ],
  },
};
