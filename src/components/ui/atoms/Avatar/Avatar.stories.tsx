import type { Meta, StoryObj } from "@storybook/react-vite";
import Avatar from "./Avatar";

const meta: Meta<typeof Avatar> = {
  title: "Atoms/Avatar",
  component: Avatar,
  tags: ["autodocs"],

  argTypes: {
    src: {
      control: "text",
      description: "The URL of the avatar image",
    },
    alt: {
      control: "text",
      description: "The alt text for the avatar image",
    },
    initials: {
      control: "text",
      description: "Initials to display if no image is provided",
    },
    size: {
      control: { type: "select" },
      options: ["xs", "sm", "md", "lg", "xl"],
      description: "The size of the avatar",
    },
    shape: {
      control: { type: "select" },
      options: ["circle", "square"],
      description: "The shape of the avatar",
    },
  },

  args: {
    src: "https://via.placeholder.com/150",
    alt: "Avatar",
    initials: "AB",
    size: "md",
    shape: "circle",
  },
};

export default meta;
type Story = StoryObj<typeof Avatar>;

export const Default: Story = {
  args: {
    src: "https://via.placeholder.com/150",
    alt: "Avatar",
    initials: "AB",
    size: "md",
    shape: "circle",
  },
};

export const initials: Story = {
  args: {
    src: undefined,
    initials: "AB",
  },
};

export const image: Story = {
  args: {
    src: "https://via.placeholder.com/150",
    initials: undefined,
  },
};

export const sizes: Story = {
  args: {
    src: "https://via.placeholder.com/150",
    size: "md",
  },
};

export const shapes: Story = {
  args: {
    src: "https://via.placeholder.com/150",
    shape: "circle",
  },
};

export const AllSizesAndShapes: Story = {
  render: () => {
    const sizes = ["xs", "sm", "md", "lg", "xl"] as const;
    const shapes = ["circle", "square"] as const;

    return (
      <div style={{ display: "flex", gap: "1rem", flexWrap: "wrap" }}>
        {sizes.map((size) =>
          shapes.map((shape) => (
            <Avatar
              key={`${size}-${shape}`}
              src="https://via.placeholder.com/150"
              size={size}
              shape={shape}
            />
          )),
        )}
      </div>
    );
  },
};
