import type { Meta, StoryObj } from "@storybook/react-vite";
import LanguageCurrencySelector from "./LanguageCurrencySelector";

const meta: Meta<typeof LanguageCurrencySelector> = {
  title: "Molecules/LanguageCurrencySelector",
  component: LanguageCurrencySelector,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof LanguageCurrencySelector>;

export const Default: Story = {
  args: {
    language: "English",
    currency: "CAD",
  },
};

export const US: Story = {
  args: {
    language: "English",
    currency: "USD",
  },
};
