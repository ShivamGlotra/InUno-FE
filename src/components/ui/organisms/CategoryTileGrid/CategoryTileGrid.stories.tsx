import type { Meta, StoryObj } from "@storybook/react-vite";
import CategoryTileGrid from "./CategoryTileGrid";

const meta: Meta<typeof CategoryTileGrid> = {
  title: "Organisms/CategoryTileGrid",
  component: CategoryTileGrid,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof CategoryTileGrid>;

export const Default: Story = {
  args: {
    categories: [
      {
        id: "1",
        name: "Laptops",
        image: "https://placehold.co/200x150",
      },
      {
        id: "2",
        name: "Phones",
        image: "https://placehold.co/200x150",
      },
      {
        id: "3",
        name: "Audio",
        image: "https://placehold.co/200x150",
      },
      {
        id: "4",
        name: "Accessories",
        image: "https://placehold.co/200x150",
      },
    ],
  },
};
