import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductCard from "./ProductCard";

const meta: Meta<typeof ProductCard> = {
  title: "Organisms/ProductCard",
  component: ProductCard,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductCard>;

export const Default: Story = {
  args: {
    name: "Wireless Headphones",
    image: "https://placehold.co/300x300",
    price: 79.99,
    originalPrice: 99.99,
    rating: 4.5,
  },
};
