import type { Meta, StoryObj } from "@storybook/react-vite";
import AddressFormRow from "./AddressFormRow";

const meta: Meta<typeof AddressFormRow> = {
  title: "Molecules/AddressFormRow",
  component: AddressFormRow,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AddressFormRow>;

export const Default: Story = {
  args: {
    label: "Street Address",
    placeholder: "Enter your address",
  },
};

export const Required: Story = {
  args: {
    label: "City",
    placeholder: "Enter your city",
    required: true,
  },
};
