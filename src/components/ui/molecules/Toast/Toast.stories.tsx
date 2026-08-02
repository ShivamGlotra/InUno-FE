import type { Meta, StoryObj } from "@storybook/react-vite";
import Toast from "./Toast";

const meta: Meta<typeof Toast> = {
  title: "Molecules/Toast",
  component: Toast,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Toast>;

export const Info: Story = {
  args: {
    message: "Your changes have been saved.",
    variant: "info",
  },
};

export const Success: Story = {
  args: {
    message: "Item added to cart.",
    variant: "success",
  },
};

export const Error: Story = {
  args: {
    message: "Something went wrong.",
    variant: "error",
  },
};
