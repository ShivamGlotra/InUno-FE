import type { Meta, StoryObj } from '@storybook/react-vite';
import QASection from './QASection';

const meta: Meta<typeof QASection> = {
  title: 'Organisms/QASection',
  component: QASection,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof QASection>;

export const Default: Story = {};
