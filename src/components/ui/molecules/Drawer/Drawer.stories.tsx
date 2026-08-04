import type { Meta, StoryObj } from '@storybook/react-vite';
import Drawer from './Drawer';

const meta: Meta<typeof Drawer> = {
  title: 'Molecules/Drawer',
  component: Drawer,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Drawer>;

export const Open: Story = {
  args: {
    open: true,
    title: 'Menu',
    onClose: () => {},
    children: 'Drawer content goes here.',
  },
};
