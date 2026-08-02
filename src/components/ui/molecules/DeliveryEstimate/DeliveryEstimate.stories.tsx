import type { Meta, StoryObj } from "@storybook/react-vite";
import DeliveryEstimate from "./DeliveryEstimate";

const meta: Meta<typeof DeliveryEstimate> = {
  title: "Molecules/DeliveryEstimate",
  component: DeliveryEstimate,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof DeliveryEstimate>;

export const Default: Story = {
  args: {
    date: "Friday, August 8",
  },
};

export const WithLocation: Story = {
  args: {
    date: "Friday, August 8",
    location: "Toronto, ON",
  },
};
