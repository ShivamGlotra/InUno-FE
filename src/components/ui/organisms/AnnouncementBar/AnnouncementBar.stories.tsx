import type { Meta, StoryObj } from '@storybook/react-vite';
import AnnouncementBar from './AnnouncementBar';

const meta: Meta<typeof AnnouncementBar> = {
  title: 'Organisms/AnnouncementBar',
  component: AnnouncementBar,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof AnnouncementBar>;

export const Default: Story = {
  args: {
    message: 'Free shipping on orders over $50.',
  },
};
