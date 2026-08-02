import type { Meta, StoryObj } from "@storybook/react-vite";
import StickyBuyBox from "./StickyBuyBox";

const meta: Meta<typeof StickyBuyBox> = {
  title: "Organisms/StickyBuyBox",
  component: StickyBuyBox,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof StickyBuyBox>;

export const Default: Story = {};
