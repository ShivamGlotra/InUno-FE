import type { Meta, StoryObj } from '@storybook/react-vite';
import NewsletterSignup from './NewsletterSignup';

const meta: Meta<typeof NewsletterSignup> = {
  title: 'Organisms/NewsletterSignup',
  component: NewsletterSignup,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof NewsletterSignup>;

export const Default: Story = {};
