import type { Meta, StoryObj } from '@storybook/react';
import Skeleton from './Skeleton';

const meta: Meta<typeof Skeleton> = {
  title: 'Atoms/Skeleton',
  component: Skeleton,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Skeleton>;

export const Text: Story = {
  args: {
    width: '300px',
    height: '16px',
  },
};

export const Image: Story = {
  args: {
    width: '300px',
    height: '200px',
  },
};
