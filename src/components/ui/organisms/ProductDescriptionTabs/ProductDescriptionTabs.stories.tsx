import type { Meta, StoryObj } from '@storybook/react-vite';
import ProductDescriptionTabs from './ProductDescriptionTabs';

const meta: Meta<typeof ProductDescriptionTabs> = {
  title: 'Organisms/ProductDescriptionTabs',
  component: ProductDescriptionTabs,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ProductDescriptionTabs>;

export const Default: Story = {};
