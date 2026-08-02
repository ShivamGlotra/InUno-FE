import type { Meta, StoryObj } from "@storybook/react-vite";
import ReviewSubmissionForm from "./ReviewSubmissionForm";

const meta: Meta<typeof ReviewSubmissionForm> = {
  title: "Organisms/ReviewSubmissionForm",
  component: ReviewSubmissionForm,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ReviewSubmissionForm>;

export const Default: Story = {};
