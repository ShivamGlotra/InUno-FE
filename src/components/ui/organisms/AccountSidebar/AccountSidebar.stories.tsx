import type { Meta, StoryObj } from '@storybook/react-vite';
import AccountSidebar from './AccountSidebar';

const meta: Meta<typeof AccountSidebar> = {
  title: 'Organisms/AccountSidebar',
  component: AccountSidebar,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof AccountSidebar>;

export const Default: Story = {
  args: {
    items: [
      { label: 'Account', href: '#', active: true },
      { label: 'Orders', href: '#' },
      { label: 'Wishlist', href: '#' },
      { label: 'Addresses', href: '#' },
      { label: 'Settings', href: '#' },
    ],
  },
};
