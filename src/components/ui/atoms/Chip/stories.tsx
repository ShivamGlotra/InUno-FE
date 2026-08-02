import type { Meta, StoryObj } from "@storybook/react";
import Chip from "./Chip";

const meta: Meta<typeof Chip> = {
  title: "Atoms/Chip",
  component: Chip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Chip>;

export const Default: Story = {
  args: {
    label: "Category",
  },
};

export const Selected: Story = {
  args: {
    label: "Selected",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    label: "Disabled",
    disabled: true,
  },
};
