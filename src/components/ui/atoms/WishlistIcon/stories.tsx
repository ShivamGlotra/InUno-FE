import type { Meta, StoryObj } from "@storybook/react";
import WishlistIcon from "./WishlistIcon";

const meta: Meta<typeof WishlistIcon> = {
  title: "Atoms/WishlistIcon",
  component: WishlistIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof WishlistIcon>;

export const Default: Story = {};

export const Active: Story = {
  args: {
    active: true,
  },
};

export const Large: Story = {
  args: {
    size: 32,
  },
};
