import type { Meta, StoryObj } from '@storybook/react-vite';
import Kbd from './Kbd';

const meta: Meta<typeof Kbd> = {
  title: 'Atoms/Kbd',
  component: Kbd,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Kbd>;

export const Default: Story = {
  args: {
    children: 'Enter',
  },
};

export const Command: Story = {
  args: {
    children: '⌘ K',
  },
};

export const Escape: Story = {
  args: {
    children: 'ESC',
  },
};
