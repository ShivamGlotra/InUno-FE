import type { Meta, StoryObj } from '@storybook/react-vite';
import Divider from './Divider';

const meta: Meta<typeof Divider> = {
  title: 'Atoms/Divider',
  component: Divider,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Divider>;

export const Horizontal: Story = {
  args: {
    orientation: 'horizontal',
  },
};

export const Vertical: Story = {
  render: () => (
    <div style={{ height: '100px' }}>
      <Divider orientation="vertical" />
    </div>
  ),
};
