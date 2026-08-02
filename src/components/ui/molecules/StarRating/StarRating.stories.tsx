import type { Meta, StoryObj } from "@storybook/react-vite";
import StarRating from "./StarRating";

const meta: Meta<typeof StarRating> = {
  title: "Molecules/StarRating",
  component: StarRating,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StarRating>;

export const Empty: Story = {
  args: {
    rating: 0,
  },
};

export const ThreeStars: Story = {
  args: {
    rating: 3,
  },
};

export const FourAndHalf: Story = {
  args: {
    rating: 4.5,
  },
};

export const FiveStars: Story = {
  args: {
    rating: 5,
  },
};
