import type { Meta, StoryObj } from '@storybook/react-vite';
import Icon from './Icon';

const meta: Meta<typeof Icon> = {
  title: 'Atoms/Icon',
  component: Icon,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Icon>;

export const Small: Story = {
  args: {
    size: 'sm',
    children: '★',
  },
};

export const Medium: Story = {
  args: {
    size: 'md',
    children: '★',
  },
};

export const Large: Story = {
  args: {
    size: 'lg',
    children: '★',
  },
};
