import type { Meta, StoryObj } from "@storybook/react-vite";
import PaymentMethodSelector from "./PaymentMethodSelector";

const meta: Meta<typeof PaymentMethodSelector> = {
  title: "Organisms/PaymentMethodSelector",
  component: PaymentMethodSelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PaymentMethodSelector>;

export const Default: Story = {};
