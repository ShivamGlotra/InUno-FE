import type { Meta, StoryObj } from '@storybook/react-vite';
import Logo from './Logo';

const meta: Meta<typeof Logo> = {
  title: 'Atoms/Logo',
  component: Logo,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Logo>;

export const Default: Story = {
  args: {
    text: 'Store',
  },
};

export const BrandName: Story = {
  args: {
    text: 'Amazon',
  },
};
