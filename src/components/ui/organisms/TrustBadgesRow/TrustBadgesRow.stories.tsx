import type { Meta, StoryObj } from '@storybook/react-vite';
import TrustBadgesRow from './TrustBadgesRow';

const meta: Meta<typeof TrustBadgesRow> = {
  title: 'Organisms/TrustBadgesRow',
  component: TrustBadgesRow,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof TrustBadgesRow>;

export const Default: Story = {};
