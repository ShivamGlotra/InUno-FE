import type { Meta, StoryObj } from "@storybook/react-vite";
import VariantSelector from "./VariantSelector";

const meta: Meta<typeof VariantSelector> = {
  title: "Molecules/VariantSelector",
  component: VariantSelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof VariantSelector>;

export const Sizes: Story = {
  args: {
    variants: [
      { id: "s", label: "S" },
      { id: "m", label: "M" },
      { id: "l", label: "L" },
      { id: "xl", label: "XL" },
    ],
  },
};

export const WithDefault: Story = {
  args: {
    variants: [
      { id: "black", label: "Black" },
      { id: "white", label: "White" },
      { id: "blue", label: "Blue" },
    ],
    defaultVariant: "black",
  },
};
