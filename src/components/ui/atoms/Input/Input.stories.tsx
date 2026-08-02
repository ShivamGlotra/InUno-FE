import type { Meta, StoryObj } from "@storybook/react-vite";
import Input from "./Input";

const meta: Meta<typeof Input> = {
  title: "Atoms/Input",
  component: Input,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Input>;

export const Default: Story = {
  args: {
    placeholder: "Enter text...",
  },
};

export const WithValue: Story = {
  args: {
    defaultValue: "Example value",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid input",
    error: true,
  },
};

export const Disabled: Story = {
  args: {
    placeholder: "Disabled input",
    disabled: true,
  },
};
