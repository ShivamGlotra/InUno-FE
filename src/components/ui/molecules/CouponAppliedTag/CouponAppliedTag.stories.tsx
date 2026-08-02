import type { Meta, StoryObj } from "@storybook/react-vite";
import CouponAppliedTag from "./CouponAppliedTag";

const meta: Meta<typeof CouponAppliedTag> = {
  title: "Molecules/CouponAppliedTag",
  component: CouponAppliedTag,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CouponAppliedTag>;

export const Default: Story = {
  args: {
    code: "SAVE20",
  },
};

export const Removable: Story = {
  args: {
    code: "WELCOME10",
    onRemove: () => {},
  },
};
