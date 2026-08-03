import type { Meta, StoryObj } from '@storybook/react-vite';
import QuantitySelector from './QuantitySelector';

const meta: Meta<typeof QuantitySelector> = {
  title: 'Molecules/QuantitySelector',
  component: QuantitySelector,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof QuantitySelector>;

export const Default: Story = {
  args: {
    initialQuantity: 1,
  },
};

export const StartingAtFive: Story = {
  args: {
    initialQuantity: 5,
  },
};
