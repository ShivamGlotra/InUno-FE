import type { Meta, StoryObj } from '@storybook/react-vite';
import WishlistGrid from './WishlistGrid';

const meta: Meta<typeof WishlistGrid> = {
  title: 'Organisms/WishlistGrid',
  component: WishlistGrid,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof WishlistGrid>;

export const Default: Story = {};
