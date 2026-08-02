import type { Meta, StoryObj } from "@storybook/react-vite";
import StrikethroughPrice from "./StrikethroughPrice";

const meta: Meta<typeof StrikethroughPrice> = {
  title: "Atoms/StrikethroughPrice",
  component: StrikethroughPrice,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StrikethroughPrice>;

export const Default: Story = {
  args: {
    amount: 99.99,
  },
};

export const CanadianDollar: Story = {
  args: {
    amount: 99.99,
    currency: "CAD",
  },
};
