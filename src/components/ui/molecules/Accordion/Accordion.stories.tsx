import type { Meta, StoryObj } from '@storybook/react-vite';
import Accordion from './Accordion';

const meta: Meta<typeof Accordion> = {
  title: 'Molecules/Accordion',
  component: Accordion,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Accordion>;

export const Default: Story = {
  args: {
    title: 'Product Information',
    children: 'This section contains product information.',
  },
};

export const Open: Story = {
  args: {
    title: 'Shipping Information',
    children: 'Free shipping is available on eligible orders.',
    defaultOpen: true,
  },
};
