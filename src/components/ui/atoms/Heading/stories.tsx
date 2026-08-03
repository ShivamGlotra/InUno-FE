import type { Meta, StoryObj } from '@storybook/react';
import Heading from './Heading';

const meta: Meta<typeof Heading> = {
  title: 'Atoms/Heading',
  component: Heading,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof Heading>;

export const H1: Story = {
  args: {
    children: 'Page Heading',
    level: 1,
  },
};

export const H2: Story = {
  args: {
    children: 'Section Heading',
    level: 2,
  },
};

export const H3: Story = {
  args: {
    children: 'Subsection Heading',
    level: 3,
  },
};
