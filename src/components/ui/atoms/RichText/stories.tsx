import type { Meta, StoryObj } from '@storybook/react';
import RichText from './RichText';

const meta: Meta<typeof RichText> = {
  title: 'Atoms/RichText',
  component: RichText,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof RichText>;

export const Default: Story = {
  args: {
    children: (
      <>
        <p>This is a rich text paragraph.</p>
        <strong>Bold content</strong>
      </>
    ),
  },
};
