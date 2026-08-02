import type { Meta, StoryObj } from "@storybook/react";
import ShippingBadge from "./ShippingBadge";

const meta: Meta<typeof ShippingBadge> = {
  title: "Atoms/ShippingBadge",
  component: ShippingBadge,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ShippingBadge>;

export const FreeShipping: Story = {
  args: {
    free: true,
  },
};
