import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderReviewSummary from "./OrderReviewSummary";

const meta: Meta<typeof OrderReviewSummary> = {
  title: "Organisms/OrderReviewSummary",
  component: OrderReviewSummary,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderReviewSummary>;

export const Default: Story = {
  args: {
    rating: 4.5,
    reviewCount: 128,
  },
};
