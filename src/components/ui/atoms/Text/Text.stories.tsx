import type { Meta, StoryObj } from '@storybook/react-vite';
import Text from './Text';

const meta: Meta<typeof Text> = {
  title: 'Atoms/Text',
  component: Text,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Text>;

export const Default: Story = {
  args: {
    children: 'Body text',
  },
};

export const Small: Story = {
  args: {
    children: 'Small text',
    size: 'sm',
  },
};

export const Large: Story = {
  args: {
    children: 'Large text',
    size: 'lg',
  },
};

export const Bold: Story = {
  args: {
    children: 'Bold text',
    weight: 'bold',
  },
};
