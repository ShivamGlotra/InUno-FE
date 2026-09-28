export type Product = {
  id: string;
  image: string;
  discountPercent?: number;
  category: string;
  name: string;
  rating: number;
  reviewCount: number;
  price: number;
  originalPrice?: number;
  isWishlisted?: boolean;
  onWishlistToggle?: () => void;
  onAddToCart?: () => void;
  slug: string;
  description?: string;
  currency?: string; // e.g. "USD" — omit if always one currency
  compareAtPrice?: number; // original price, for showing discounts
  images: ProductImage[];
  brand?: string;
  inStock: boolean;
  variants?: ProductVariant[]; // size/color options, if applicable
  createdAt: string;
  updatedAt: string;
};

export type ProductImage = {
  url: string;
  alt: string;
};

export type ProductVariant = {
  id: string;
  name: string;
  value: string;
  price?: number;
  inStock: boolean;
};
