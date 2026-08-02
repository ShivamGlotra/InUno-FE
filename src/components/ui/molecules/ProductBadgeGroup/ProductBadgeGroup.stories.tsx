import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductBadgeGroup from "./ProductBadgeGroup";

const meta: Meta<typeof ProductBadgeGroup> = {
  title: "Molecules/ProductBadgeGroup",
  component: ProductBadgeGroup,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductBadgeGroup>;

export const Default: Story = {
  args: {
    label: "Best Seller",
    discount: 20,
    shipping: true,
  },
};

export const DiscountOnly: Story = {
  args: {
    discount: 15,
  },
};
