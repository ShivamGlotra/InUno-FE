import type { Meta, StoryObj } from '@storybook/react';
import Radio from './Radio';

const meta: Meta<typeof Radio> = {
  title: 'Atoms/Radio',
  component: Radio,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Radio>;

export const Default: Story = {
  args: {
    name: 'example',
  },
};

export const Selected: Story = {
  args: {
    name: 'example',
    defaultChecked: true,
  },
};
