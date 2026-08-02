import type { Meta, StoryObj } from "@storybook/react-vite";
import FilterSidebar from "./FilterSidebar";

const meta: Meta<typeof FilterSidebar> = {
  title: "Organisms/FilterSidebar",
  component: FilterSidebar,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FilterSidebar>;

export const Default: Story = {};
