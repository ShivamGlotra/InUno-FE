import type { Meta, StoryObj } from "@storybook/react-vite";
import SizeOption from "./SizeOption";

const meta: Meta<typeof SizeOption> = {
  title: "Atoms/SizeOption",
  component: SizeOption,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof SizeOption>;

export const Small: Story = {
  args: {
    size: "S",
  },
};

export const Medium: Story = {
  args: {
    size: "M",
  },
};

export const Selected: Story = {
  args: {
    size: "L",
    selected: true,
  },
};

export const Disabled: Story = {
  args: {
    size: "XL",
    disabled: true,
  },
};
