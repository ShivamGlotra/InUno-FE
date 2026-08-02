import type { Meta, StoryObj } from "@storybook/react-vite";
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

export const Large: Story = {
  args: {
    size: 32,
    filled: true,
  },
};
