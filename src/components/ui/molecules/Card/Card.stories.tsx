import type { Meta, StoryObj } from '@storybook/react-vite';
import Card from './Card';
import Heading from '@/components/ui/atoms/Heading/Heading';
import Text from '@/components/ui/atoms/Text/Text';

const meta: Meta<typeof Card> = {
  title: 'Molecules/Card',
  component: Card,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Card>;

export const Default: Story = {
  render: () => (
    <Card>
      <Heading level={3}>Product Card</Heading>
      <Text>This is a reusable card molecule.</Text>
    </Card>
  ),
};
