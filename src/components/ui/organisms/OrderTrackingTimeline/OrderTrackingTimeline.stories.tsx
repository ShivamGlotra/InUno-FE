import type { Meta, StoryObj } from '@storybook/react-vite';
import OrderTrackingTimeline from './OrderTrackingTimeline';

const meta: Meta<typeof OrderTrackingTimeline> = {
  title: 'Organisms/OrderTrackingTimeline',
  component: OrderTrackingTimeline,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof OrderTrackingTimeline>;

export const Default: Story = {
  args: {
    events: [
      {
        title: 'Order placed',
        date: 'August 1',
        completed: true,
      },
      {
        title: 'Shipped',
        date: 'August 2',
        completed: true,
      },
      {
        title: 'Out for delivery',
        date: 'August 3',
      },
      {
        title: 'Delivered',
        date: 'August 3',
      },
    ],
  },
};
