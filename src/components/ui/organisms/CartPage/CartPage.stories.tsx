import type { Meta, StoryObj } from "@storybook/react-vite";
import CartPage from "./CartPage";

const meta: Meta<typeof CartPage> = {
  title: "Organisms/CartPage",
  component: CartPage,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CartPage>;

export const Default: Story = {};
