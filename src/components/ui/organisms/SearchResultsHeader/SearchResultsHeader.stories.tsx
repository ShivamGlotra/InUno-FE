import type { Meta, StoryObj } from '@storybook/react-vite';
import SearchResultsHeader from './SearchResultsHeader';

const meta: Meta<typeof SearchResultsHeader> = {
  title: 'Organisms/SearchResultsHeader',
  component: SearchResultsHeader,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof SearchResultsHeader>;

export const Default: Story = {
  args: {
    query: 'headphones',
    resultCount: 42,
  },
};
