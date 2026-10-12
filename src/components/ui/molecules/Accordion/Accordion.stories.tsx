import type { Meta, StoryObj } from '@storybook/react-vite';
import Accordion from './Accordion';

const meta: Meta<typeof Accordion> = {
  title: 'Molecules/Accordion',
  component: Accordion,
  tags: ['autodocs'],
};

export default meta;
type Story = StoryObj<typeof Accordion>;

export const Default: Story = {
  args: {
    title: 'Accordion Title',
    children: (
      <p>
        This is the content of the accordion. You can put any ReactNode here, such as text, images,
        or other components.
      </p>
    ),
  },
};

export const OpenByDefault: Story = {
  args: {
    title: 'Accordion Title',
    defaultOpen: true,
    children: (
      <p>
        This accordion is open by default. You can put any ReactNode here, such as text, images, or
        other components.
      </p>
    ),
  },
};

export const ChevronVariant: Story = {
  args: {
    title: 'Accordion Title',
    variant: 'chevron',
    children: (
      <p>
        This accordion uses the chevron variant for the toggle icon. You can put any ReactNode here,
        such as text, images, or other components.
      </p>
    ),
  },
};
