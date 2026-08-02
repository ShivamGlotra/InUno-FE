import type { Meta, StoryObj } from "@storybook/react-vite";
import OrderHistoryList from "./OrderHistoryList";

const meta: Meta<typeof OrderHistoryList> = {
  title: "Organisms/OrderHistoryList",
  component: OrderHistoryList,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof OrderHistoryList>;

export const Default: Story = {
  args: {
    orders: [
      {
        id: "10001",
        date: "August 1, 2026",
        total: 129.99,
        status: "Delivered",
      },
      {
        id: "10002",
        date: "July 25, 2026",
        total: 79.99,
        status: "Shipped",
      },
    ],
  },
};
