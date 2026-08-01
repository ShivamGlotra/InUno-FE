import type { Meta, StoryObj } from "@storybook/react-vite";
import Card from "./Card";

const meta: Meta<typeof Card> = {
  title: "Molecules/Card",
  component: Card,
  tags: ["autodocs"],

  argTypes: {
    elevation: {
      control: { type: "select" },
      options: ["none", "sm", "md", "lg", "xl"],
    },
    padding: {
      control: { type: "select" },
      options: ["none", "sm", "md", "lg", "xl"],
    },
    rounded: {
      control: { type: "select" },
      options: ["none", "sm", "md", "lg", "xl"],
    },
    fullWidth: {
      control: { type: "boolean" },
    },
  },
  args: {
    children: (
      <>
        <h3>This is a card</h3>
        <p>This is a reusable component</p>
      </>
    ),
    elevation: "md",
    padding: "md",
    rounded: "lg",
  },
};

export default meta;
type Story = StoryObj<typeof Card>;

export const None: Story = {
  args: {
    elevation: "none",
    padding: "none",
    rounded: "none",
  },
};

export const Small: Story = {
  args: {
    elevation: "sm",
    padding: "sm",
    rounded: "sm",
  },
};

export const Medium: Story = {
  args: {
    elevation: "md",
    padding: "md",
    rounded: "md",
  },
};

export const Large: Story = {
  args: {
    elevation: "lg",
    padding: "lg",
    rounded: "lg",
  },
};

export const ExtraLarge: Story = {
  args: {
    elevation: "xl",
    padding: "xl",
    rounded: "xl",
  },
};

export const FullWidth: Story = {
  args: {
    fullWidth: true,
  },
};

export const Showcase: Story = {
  render: () => (
    <div className="flex flex-wrap gap-4">
      <Card elevation="none" padding="none" rounded="none">
        <h3>None</h3>
        <p>This is a reusable component</p>
      </Card>
      <Card elevation="sm" padding="sm" rounded="sm">
        <h3>Small</h3>
        <p>This is a reusable component</p>
      </Card>
      <Card elevation="md" padding="md" rounded="md">
        <h3>Medium</h3>
        <p>This is a reusable component</p>
      </Card>
      <Card elevation="lg" padding="lg" rounded="lg">
        <h3>Large</h3>
        <p>This is a reusable component</p>
      </Card>
      <Card elevation="xl" padding="xl" rounded="xl">
        <h3>Extra Large</h3>
        <p>This is a reusable component</p>
      </Card>
      <Card fullWidth>
        <h3>Full Width</h3>
        <p>This is a reusable component</p>
      </Card>
    </div>
  ),
};
