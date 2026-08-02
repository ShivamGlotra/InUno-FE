import type { Meta, StoryObj } from "@storybook/react-vite";
import SearchFilterField from "./SearchFilterField";

const meta: Meta<typeof SearchFilterField> = {
  title: "Molecules/SearchFilterField",
  component: SearchFilterField,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchFilterField>;

export const Default: Story = {
  args: {
    placeholder: "Search products...",
  },
};
