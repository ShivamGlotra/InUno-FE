import type { Meta, StoryObj } from "@storybook/react-vite";
import Tooltip from "./Tooltip";

const meta: Meta<typeof Tooltip> = {
  title: "Atoms/Tooltip",
  component: Tooltip,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Tooltip>;

export const Default: Story = {
  args: {
    content: "This is a tooltip",
    children: "Hover me",
  },
};

export const ProductTooltip: Story = {
  args: {
    content: "Add this product to your wishlist",
    children: "♡",
  },
};
