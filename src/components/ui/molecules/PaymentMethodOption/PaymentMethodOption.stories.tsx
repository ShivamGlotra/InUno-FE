import type { Meta, StoryObj } from '@storybook/react-vite';
import PaymentMethodOption from './PaymentMethodOption';

const meta: Meta<typeof PaymentMethodOption> = {
  title: 'Molecules/PaymentMethodOption',
  component: PaymentMethodOption,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof PaymentMethodOption>;

export const CreditCard: Story = {
  args: {
    id: 'card',
    name: 'Credit Card',
    description: 'Visa ending in 4242',
  },
};

export const Selected: Story = {
  args: {
    id: 'paypal',
    name: 'PayPal',
    description: 'Pay with PayPal',
    selected: true,
  },
};
