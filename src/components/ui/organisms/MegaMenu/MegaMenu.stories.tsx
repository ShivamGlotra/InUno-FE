import type { Meta, StoryObj } from "@storybook/react-vite";
import MegaMenu from "./MegaMenu";

const meta: Meta<typeof MegaMenu> = {
  title: "Organisms/MegaMenu",
  component: MegaMenu,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof MegaMenu>;

export const Default: Story = {
  args: {
    columns: [
      {
        title: "Electronics",
        items: [
          { label: "Laptops", href: "#" },
          { label: "Phones", href: "#" },
          { label: "Audio", href: "#" },
        ],
      },
      {
        title: "Home",
        items: [
          { label: "Furniture", href: "#" },
          { label: "Kitchen", href: "#" },
        ],
      },
      {
        title: "Fashion",
        items: [
          { label: "Men", href: "#" },
          { label: "Women", href: "#" },
        ],
      },
      {
        title: "Deals",
        items: [
          { label: "Today's Deals", href: "#" },
          { label: "Clearance", href: "#" },
        ],
      },
    ],
  },
};
