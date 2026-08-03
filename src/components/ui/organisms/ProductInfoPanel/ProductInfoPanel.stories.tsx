import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductInfoPanel from './ProductInfoPanel';

const meta: Meta<typeof ProductInfoPanel> = {
  title: 'Organisms/ProductInfoPanel',
  component: ProductInfoPanel,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductInfoPanel>;

export const Default: Story = {};
