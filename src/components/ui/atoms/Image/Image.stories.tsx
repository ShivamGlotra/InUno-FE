import type { Meta, StoryObj } from '@storybook/react-vite';
import ImageComponent from './Image';

const meta: Meta<typeof ImageComponent> = {
  title: 'Atoms/Image',
  component: ImageComponent,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof ImageComponent>;

export const Default: Story = {
  args: {
    src: 'https://placehold.co/400x300',
    alt: 'Placeholder image',
    width: 400,
    height: 300,
  },
};

export const Contain: Story = {
  args: {
    src: 'https://placehold.co/400x300',
    alt: 'Placeholder image',
    width: 400,
    height: 300,
    objectFit: 'contain',
  },
};

export const Cover: Story = {
  args: {
    src: 'https://placehold.co/400x300',
    alt: 'Placeholder image',
    width: 400,
    height: 300,
    objectFit: 'cover',
  },
};
