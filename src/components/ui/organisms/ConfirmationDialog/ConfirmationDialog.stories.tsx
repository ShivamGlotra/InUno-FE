import type { Meta, StoryObj } from '@storybook/react-vite';
import ConfirmationDialog from './ConfirmationDialog';

const meta: Meta<typeof ConfirmationDialog> = {
  title: 'Organisms/ConfirmationDialog',
  component: ConfirmationDialog,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ConfirmationDialog>;

export const Default: Story = {
  args: {
    open: true,
    title: 'Delete Item',
    message: 'Are you sure you want to delete this item?',
  },
};
