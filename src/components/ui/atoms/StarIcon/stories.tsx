import type { Meta, StoryObj } from "@storybook/react";
import StarIcon from "./StarIcon";

const meta: Meta<typeof StarIcon> = {
  title: "Atoms/StarIcon",
  component: StarIcon,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StarIcon>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};
