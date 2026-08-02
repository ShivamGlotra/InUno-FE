import type { Meta, StoryObj } from "@storybook/react-vite";
import MiniCartDropdown from "./MiniCartDropdown";

const meta: Meta<typeof MiniCartDropdown> = {
  title: "Organisms/MiniCartDropdown",
  component: MiniCartDropdown,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof MiniCartDropdown>;

export const Default: Story = {};
