import type { Meta, StoryObj } from "@storybook/react-vite";
import Modal from "./Modal";

const meta: Meta<typeof Modal> = {
  title: "Molecules/Modal",
  component: Modal,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof Modal>;

export const Open: Story = {
  args: {
    open: true,
    title: "Confirm Action",
    onClose: () => {},
    children: "Are you sure you want to continue?",
  },
};
