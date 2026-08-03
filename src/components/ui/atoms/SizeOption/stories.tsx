import type { Meta, StoryObj } from '@storybook/react';
import SizeOption from './SizeOption';

const meta: Meta<typeof SizeOption> = {
  title: 'Atoms/SizeOption',
  component: SizeOption,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof SizeOption>;

export const Default: Story = {
  args: {
    size: 'M',
  },
};

export const Selected: Story = {
  args: {
    size: 'M',
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    size: 'XL',
    disabled: true,
  },
};
