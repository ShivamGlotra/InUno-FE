import type { Meta, StoryObj } from '@storybook/react';
import Select from './Select';

const meta: Meta<typeof Select> = {
  title: 'Atoms/Select',
  component: Select,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Select>;

export const Default: Story = {
  args: {
    options: [
      { label: 'Select an option', value: '' },
      { label: 'Option One', value: 'one' },
      { label: 'Option Two', value: 'two' },
    ],
  },
};
