import type { Meta, StoryObj } from '@storybook/react-vite';
import TextArea from './TextArea';

const meta: Meta<typeof TextArea> = {
  title: 'Atoms/TextArea',
  component: TextArea,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof TextArea>;

export const Default: Story = {
  args: {
    placeholder: 'Enter your message...',
  },
};

export const WithValue: Story = {
  args: {
    defaultValue: 'Example text content.',
  },
};

export const Error: Story = {
  args: {
    placeholder: 'Invalid content',
    error: true,
  },
};

export const Disabled: Story = {
  args: {
    placeholder: 'Disabled textarea',
    disabled: true,
  },
};
