import type { Meta, StoryObj } from "@storybook/react";
import TextArea from "./TextArea";

const meta: Meta<typeof TextArea> = {
  title: "Atoms/TextArea",
  component: TextArea,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof TextArea>;

export const Default: Story = {
  args: {
    placeholder: "Write something...",
  },
};

export const Error: Story = {
  args: {
    placeholder: "Invalid content",
    error: true,
  },
};
