import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductGrid from "./ProductGrid";

const meta: Meta<typeof ProductGrid> = {
  title: "Organisms/ProductGrid",
  component: ProductGrid,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductGrid>;

export const Default: Story = {
  args: {
    count: 8,
  },
};
