import type { Meta, StoryObj } from "@storybook/react-vite";
import Pagination from "./Pagination";

const meta: Meta<typeof Pagination> = {
  title: "Organisms/Pagination",
  component: Pagination,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Pagination>;

export const Default: Story = {
  args: {
    page: 2,
    totalPages: 10,
  },
};
