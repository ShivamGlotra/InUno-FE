import type { Meta, StoryObj } from "@storybook/react-vite";
import Heading from "./Heading";

const meta: Meta<typeof Heading> = {
  title: "Atoms/Heading",
  component: Heading,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Heading>;

export const H1: Story = {
  args: {
    level: 1,
    children: "Main Heading",
  },
};

export const H2: Story = {
  args: {
    level: 2,
    children: "Section Heading",
  },
};

export const H3: Story = {
  args: {
    level: 3,
    children: "Subsection Heading",
  },
};

export const H4: Story = {
  args: {
    level: 4,
    children: "Small Heading",
  },
};
