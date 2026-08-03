import type { Meta, StoryObj } from '@storybook/react-vite';
import RelatedProductsCarousel from './RelatedProductsCarousel';

const meta: Meta<typeof RelatedProductsCarousel> = {
  title: 'Organisms/RelatedProductsCarousel',
  component: RelatedProductsCarousel,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof RelatedProductsCarousel>;

export const Default: Story = {};
