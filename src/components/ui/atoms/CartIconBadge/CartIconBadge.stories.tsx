import type { Meta, StoryObj } from "@storybook/react-vite";
import CartIconBadge from "./CartIconBadge";

const meta: Meta<typeof CartIconBadge> = {
  title: "Atoms/CartIconBadge",
  component: CartIconBadge,
  tags: ["autodocs"],
  args: {
    count: 3,
    size: "md",
  },
};

export default meta;

type Story = StoryObj<typeof CartIconBadge>;

export const Default: Story = {};

export const Empty: Story = {
  args: {
    count: 0,
  },
};

export const LargeCount: Story = {
  args: {
    count: 127,
  },
};

export const AllSizes: Story = {
  render: () => (
    <div style={{ display: "flex", gap: 32, alignItems: "center" }}>
      <CartIconBadge count={2} size="sm" />
      <CartIconBadge count={12} size="md" />
      <CartIconBadge count={99} size="lg" />
    </div>
  ),
};
