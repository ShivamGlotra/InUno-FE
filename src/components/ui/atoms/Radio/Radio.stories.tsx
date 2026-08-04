import type { Meta, StoryObj } from '@storybook/react-vite';
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
    name: 'option',
  },
};

export const Selected: Story = {
  args: {
    name: 'option',
    defaultChecked: true,
  },
};

export const Disabled: Story = {
  args: {
    name: 'option',
    disabled: true,
  },
};
