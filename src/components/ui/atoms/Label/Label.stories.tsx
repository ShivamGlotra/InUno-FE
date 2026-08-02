import type { Meta, StoryObj } from "@storybook/react-vite";
import Label from "./Label";

const meta: Meta<typeof Label> = {
  title: "Atoms/Label",
  component: Label,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Label>;

export const Default: Story = {
  args: {
    children: "Email Address",
  },
};

export const Required: Story = {
  args: {
    children: "Email Address",
    required: true,
  },
};
