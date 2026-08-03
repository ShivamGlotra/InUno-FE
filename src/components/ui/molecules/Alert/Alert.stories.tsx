import type { Meta, StoryObj } from '@storybook/react-vite';
import Alert from './Alert';

const meta: Meta<typeof Alert> = {
  title: 'Molecules/Alert',
  component: Alert,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Alert>;

export const Info: Story = {
  args: {
    title: 'Information',
    message: 'Your order is being processed.',
    variant: 'info',
  },
};

export const Success: Story = {
  args: {
    title: 'Success',
    message: 'Your order has been placed.',
    variant: 'success',
  },
};

export const Warning: Story = {
  args: {
    message: 'Only a few items are left.',
    variant: 'warning',
  },
};

export const Error: Story = {
  args: {
    title: 'Error',
    message: 'Something went wrong.',
    variant: 'error',
  },
};
