import type { Meta, StoryObj } from "@storybook/react";
import QuantityStepperButton from "./QuantityStepperButton";

const meta: Meta<typeof QuantityStepperButton> = {
  title: "Atoms/QuantityStepperButton",
  component: QuantityStepperButton,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof QuantityStepperButton>;

export const Increase: Story = {
  args: {
    action: "increase",
  },
};

export const Decrease: Story = {
  args: {
    action: "decrease",
  },
};
