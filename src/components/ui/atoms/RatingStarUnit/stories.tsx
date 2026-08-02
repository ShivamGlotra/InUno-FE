import type { Meta, StoryObj } from "@storybook/react";
import RatingStarUnit from "./RatingStarUnit";

const meta: Meta<typeof RatingStarUnit> = {
  title: "Atoms/RatingStarUnit",
  component: RatingStarUnit,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RatingStarUnit>;

export const Empty: Story = {};

export const Filled: Story = {
  args: {
    filled: true,
  },
};

export const Half: Story = {
  args: {
    half: true,
  },
};
