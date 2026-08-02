import type { Meta, StoryObj } from "@storybook/react-vite";
import RecentlyViewedCarousel from "./RecentlyViewedCarousel";

const meta: Meta<typeof RecentlyViewedCarousel> = {
  title: "Organisms/RecentlyViewedCarousel",
  component: RecentlyViewedCarousel,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof RecentlyViewedCarousel>;

export const Default: Story = {};
