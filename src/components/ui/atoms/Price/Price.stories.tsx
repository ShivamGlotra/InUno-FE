import type { Meta, StoryObj } from "@storybook/react-vite";
import Price from "./Price";

const meta: Meta<typeof Price> = {
  title: "Atoms/Price",
  component: Price,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Price>;

export const Default: Story = {
  args: {
    amount: 49.99,
  },
};

export const WholeNumber: Story = {
  args: {
    amount: 100,
  },
};

export const CanadianDollar: Story = {
  args: {
    amount: 49.99,
    currency: "CAD",
    locale: "en-CA",
  },
};
