import type { Meta, StoryObj } from "@storybook/react";
import ColorSwatch from "./ColorSwatch";

const meta: Meta<typeof ColorSwatch> = {
  title: "Atoms/ColorSwatch",
  component: ColorSwatch,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ColorSwatch>;

export const Black: Story = {
  args: {
    color: "#000000",
    label: "Black",
  },
};

export const Red: Story = {
  args: {
    color: "#ef4444",
    label: "Red",
  },
};

export const Selected: Story = {
  args: {
    color: "#2563eb",
    label: "Blue",
    selected: true,
  },
};
