import { Meta, StoryObj } from "@storybook/react-vite";
import Backdrop from "./Backdrop";

const meta: Meta<typeof Backdrop> = {
  title: "Atoms/Backdrop",
  component: Backdrop,
  tags: ["autodocs"],
  argTypes: {
    open: {
      control: "boolean",
      description: "Controls the visibility of the backdrop.",
      defaultValue: false,
    },
    onClick: {
      action: "clicked",
      description: "Callback function triggered when the backdrop is clicked.",
    },
    className: {
      control: "text",
      description: "Additional CSS classes to apply to the backdrop.",
      defaultValue: "",
    },
  },
  args: {
    open: true,
    onClick: undefined,
    className: "",
  },
};

export default meta;

type Story = StoryObj<typeof Backdrop>;

export const Default: Story = {};

export const Closed: Story = {
  args: {
    open: false,
  },
};
