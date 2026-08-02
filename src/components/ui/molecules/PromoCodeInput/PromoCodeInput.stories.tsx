import type { Meta, StoryObj } from "@storybook/react-vite";
import PromoCodeInput from "./PromoCodeInput";

const meta: Meta<typeof PromoCodeInput> = {
  title: "Molecules/PromoCodeInput",
  component: PromoCodeInput,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof PromoCodeInput>;

export const Default: Story = {
  args: {
    onApply: () => {},
  },
};
