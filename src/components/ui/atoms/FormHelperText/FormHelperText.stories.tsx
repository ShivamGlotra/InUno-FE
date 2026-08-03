import type { Meta, StoryObj } from '@storybook/react-vite';
import FormHelperText from './FormHelperText';

const meta: Meta<typeof FormHelperText> = {
  title: 'Atoms/FormHelperText',
  component: FormHelperText,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof FormHelperText>;

export const Default: Story = {
  args: {
    children: 'Enter a valid value.',
  },
};

export const Error: Story = {
  args: {
    children: 'This field is required.',
    error: true,
  },
};
