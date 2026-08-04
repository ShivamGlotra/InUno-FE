import type { Meta, StoryObj } from '@storybook/react-vite';
import AddressBook from './AddressBook';

const meta: Meta<typeof AddressBook> = {
  title: 'Organisms/AddressBook',
  component: AddressBook,
  tags: ['autodocs'],
};

export default meta;

type Story = StoryObj<typeof AddressBook>;

export const Default: Story = {};
