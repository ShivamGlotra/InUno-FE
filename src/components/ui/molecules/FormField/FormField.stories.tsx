import type { Meta, StoryObj } from "@storybook/react-vite";
import FormField from "./FormField";
import Input from "@/components/ui/atoms/Input/Input";

const meta: Meta<typeof FormField> = {
  title: "Molecules/FormField",
  component: FormField,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof FormField>;

export const Default: Story = {
  render: () => (
    <FormField label="Email">
      <Input placeholder="Enter your email" />
    </FormField>
  ),
};

export const Required: Story = {
  render: () => (
    <FormField label="Password" required helperText="Minimum 8 characters">
      <Input type="password" />
    </FormField>
  ),
};

export const Error: Story = {
  render: () => (
    <FormField label="Email" error="Please enter a valid email address">
      <Input />
    </FormField>
  ),
};
