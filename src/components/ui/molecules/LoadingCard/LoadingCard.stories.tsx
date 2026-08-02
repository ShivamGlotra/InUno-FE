import type { Meta, StoryObj } from "@storybook/react-vite";
import LoadingCard from "./LoadingCard";

const meta: Meta<typeof LoadingCard> = {
  title: "Molecules/LoadingCard",
  component: LoadingCard,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof LoadingCard>;

export const Default: Story = {};
