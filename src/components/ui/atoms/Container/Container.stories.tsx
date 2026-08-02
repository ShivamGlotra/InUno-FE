import type { Meta, StoryObj } from "@storybook/react-vite";
import Container from "./Container";

const meta: Meta<typeof Container> = {
  title: "Atoms/Container",
  component: Container,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Container>;

export const Small: Story = {
  args: {
    size: "sm",
    children: "Small container",
  },
};

export const Medium: Story = {
  args: {
    size: "md",
    children: "Medium container",
  },
};

export const Large: Story = {
  args: {
    size: "lg",
    children: "Large container",
  },
};

export const ExtraLarge: Story = {
  args: {
    size: "xl",
    children: "Extra large container",
  },
};

export const FullWidth: Story = {
  args: {
    size: "full",
    children: "Full width container",
  },
};
