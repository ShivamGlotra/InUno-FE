import type { Meta, StoryObj } from "@storybook/react-vite";
import Tabs from "./Tabs";

const meta: Meta<typeof Tabs> = {
  title: "Molecules/Tabs",
  component: Tabs,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Tabs>;

export const Default: Story = {
  args: {
    tabs: [
      {
        id: "description",
        label: "Description",
        content: "Product description goes here.",
      },
      {
        id: "reviews",
        label: "Reviews",
        content: "Customer reviews go here.",
      },
      {
        id: "shipping",
        label: "Shipping",
        content: "Shipping information goes here.",
      },
    ],
  },
};
