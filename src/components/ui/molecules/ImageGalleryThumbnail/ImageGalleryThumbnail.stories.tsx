import type { Meta, StoryObj } from "@storybook/react-vite";
import ImageGalleryThumbnail from "./ImageGalleryThumbnail";

const meta: Meta<typeof ImageGalleryThumbnail> = {
  title: "Molecules/ImageGalleryThumbnail",
  component: ImageGalleryThumbnail,
  tags: ["autodocs"],
};

export default meta;

type Story = StoryObj<typeof ImageGalleryThumbnail>;

export const Default: Story = {
  args: {
    src: "https://placehold.co/72x72",
    alt: "Product",
  },
};

export const Selected: Story = {
  args: {
    src: "https://placehold.co/72x72",
    alt: "Selected product",
    selected: true,
  },
};
