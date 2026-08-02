import { Meta, StoryObj } from "@storybook/react-vite";
import Button from "./Button";

const meta: Meta<typeof Button> = {
  title: "Atoms/Button",
  component: Button,
  tags: ["autodocs"],
  argTypes: {
    variant: {
      control: "select",
      options: [
        "primary",
        "secondary",
        "tertiary",
        "outline",
        "danger",
        "icon-only",
        "link",
        "ghost",
      ],
    },
    size: {
      control: { type: "select" },
      options: ["sm", "md", "lg"],
    },
    isLoading: { control: { type: "boolean" } },
    disabled: { control: { type: "boolean" } },
    onClick: { action: "clicked" },
  },
};

export default meta;
type Story = StoryObj<typeof Button>;

export const Primary: Story = {
  render: (args) => <Button {...args} />,
  args: {
    variant: "primary",
    size: "lg",
    isLoading: false,
    disabled: false,
    children: "Primary Button",
  },
};

export const Secondary: Story = {
  render: (args) => <Button {...args} />,
  args: {
    variant: "secondary",
    size: "md",
    isLoading: false,
    disabled: false,
    children: "Secondary Button",
  },
};

export const Tertiary: Story = {
  args: {
    variant: "tertiary",
    size: "sm",
    isLoading: false,
    disabled: false,
    children: "Tertiary Button",
  },
};

export const Outline: Story = {
  args: {
    variant: "outline",
    size: "lg",
    isLoading: false,
    disabled: false,
    children: "Outline Button",
  },
};

export const Danger: Story = {
  args: {
    variant: "danger",
    size: "md",
    isLoading: false,
    disabled: false,
    children: "Danger Button",
  },
};

export const IconOnly: Story = {
  args: {
    variant: "icon-only",
    size: "md",
    isLoading: false,
    disabled: false,
    children: "Icon Only Button",
  },
};

export const Link: Story = {
  args: {
    variant: "link",
    size: "md",
    isLoading: false,
    disabled: false,
    children: "Link Button",
  },
};

export const Ghost: Story = {
  args: {
    variant: "ghost",
    size: "md",
    isLoading: false,
    disabled: false,
    children: "Ghost Button",
  },
};

export const Sizes: Story = {
  render: (args) => (
    <div className="flex gap-4">
      <Button {...args} size="sm">
        Small Button
      </Button>
      <Button {...args} size="md">
        Medium Button
      </Button>
      <Button {...args} size="lg">
        Large Button
      </Button>
    </div>
  ),
  args: {
    variant: "primary",
    isLoading: false,
    disabled: false,
  },
};
