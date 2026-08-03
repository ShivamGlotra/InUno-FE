import type { Meta, StoryObj } from '@storybook/react-vite';
import DealOfTheDaySection from './DealOfTheDaySection';

const meta: Meta<typeof DealOfTheDaySection> = {
  title: 'Organisms/DealOfTheDaySection',
  component: DealOfTheDaySection,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof DealOfTheDaySection>;

export const Default: Story = {};
