import type { Meta, StoryObj } from '@storybook/react-vite';
import CheckoutStepper from './CheckoutStepper';

const meta: Meta<typeof CheckoutStepper> = {
  title: 'Organisms/CheckoutStepper',
  component: CheckoutStepper,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof CheckoutStepper>;

export const Default: Story = {
  args: {
    steps: [
      { label: 'Cart', completed: true },
      { label: 'Shipping', active: true },
      { label: 'Payment' },
      { label: 'Confirmation' },
    ],
  },
};
