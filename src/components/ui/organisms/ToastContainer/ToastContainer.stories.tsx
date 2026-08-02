import type { Meta, StoryObj } from "@storybook/react-vite";
import ToastContainer from "./ToastContainer";

const meta: Meta<typeof ToastContainer> = {
  title: "Organisms/ToastContainer",
  component: ToastContainer,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ToastContainer>;

export const Default: Story = {
  args: {
    messages: [
      "Item added to cart.",
      "Wishlist updated.",
    ],
  },
};
