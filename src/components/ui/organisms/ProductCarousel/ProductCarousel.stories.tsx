import type { Meta, StoryObj } from "@storybook/react-vite";
import ProductCarousel from "./ProductCarousel";

const meta: Meta<typeof ProductCarousel> = {
  title: "Organisms/ProductCarousel",
  component: ProductCarousel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ProductCarousel>;

export const Default: Story = {};
