import type { Meta, StoryObj } from "@storybook/react";
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
