import type { Meta, StoryObj } from "@storybook/react-vite";
import SearchInput from "./SearchInput";

const meta: Meta<typeof SearchInput> = {
  title: "Atoms/SearchInput",
  component: SearchInput,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SearchInput>;

export const Default: Story = {
  args: {
    placeholder: "Search...",
  },
};

export const ProductSearch: Story = {
  args: {
    placeholder: "Search for products, brands, and more",
  },
};
