import type { Meta, StoryObj } from '@storybook/react-vite';
import RichText from './RichText';

const meta: Meta<typeof RichText> = {
  title: 'Atoms/RichText',
  component: RichText,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof RichText>;

export const Paragraph: Story = {
  args: {
    children: 'This is an example of rich text content.',
  },
};

export const MultipleElements: Story = {
  args: {
    children: 'Product description content.',
  },
};
