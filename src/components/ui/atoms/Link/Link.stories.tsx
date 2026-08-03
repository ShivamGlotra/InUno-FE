import type { Meta, StoryObj } from '@storybook/react-vite';
import Link from './Link';

const meta: Meta<typeof Link> = {
  title: 'Atoms/Link',
  component: Link,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Link>;

export const Default: Story = {
  args: {
    href: '#',
    children: 'Learn More',
  },
};

export const ProductLink: Story = {
  args: {
    href: '#',
    children: 'View Product',
  },
};
