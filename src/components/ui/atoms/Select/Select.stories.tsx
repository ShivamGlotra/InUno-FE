import type { Meta, StoryObj } from "@storybook/react-vite";
import Select from "./Select";

const meta: Meta<typeof Select> = {
  title: "Atoms/Select",
  component: Select,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Select>;

export const Default: Story = {
  args: {
    options: [
      { label: "Select an option", value: "" },
      { label: "Option One", value: "one" },
      { label: "Option Two", value: "two" },
      { label: "Option Three", value: "three" },
    ],
  },
};

export const Categories: Story = {
  args: {
    options: [
      { label: "All Categories", value: "all" },
      { label: "Electronics", value: "electronics" },
      { label: "Clothing", value: "clothing" },
      { label: "Home", value: "home" },
    ],
  },
};
