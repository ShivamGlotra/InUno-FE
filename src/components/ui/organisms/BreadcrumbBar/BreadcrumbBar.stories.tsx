import type { Meta, StoryObj } from "@storybook/react-vite";
import BreadcrumbBar from "./BreadcrumbBar";

const meta: Meta<typeof BreadcrumbBar> = {
  title: "Organisms/BreadcrumbBar",
  component: BreadcrumbBar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof BreadcrumbBar>;

export const Default: Story = {
  args: {
    items: [
      { label: "Home", href: "#" },
      { label: "Electronics", href: "#" },
      { label: "Laptops" },
    ],
  },
};
