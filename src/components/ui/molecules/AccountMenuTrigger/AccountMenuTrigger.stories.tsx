import type { Meta, StoryObj } from "@storybook/react-vite";
import AccountMenuTrigger from "./AccountMenuTrigger";

const meta: Meta<typeof AccountMenuTrigger> = {
  title: "Molecules/AccountMenuTrigger",
  component: AccountMenuTrigger,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof AccountMenuTrigger>;

export const Default: Story = {
  args: {
    name: "John Doe",
  },
};
