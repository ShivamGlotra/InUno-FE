import type { Meta, StoryObj } from "@storybook/react-vite";
import ReviewsSection from "./ReviewsSection";

const meta: Meta<typeof ReviewsSection> = {
  title: "Organisms/ReviewsSection",
  component: ReviewsSection,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ReviewsSection>;

export const Default: Story = {};
