import Image from "@/components/ui/atoms/Image/Image";
import WishlistIcon from "@/components/ui/atoms/WishlistIcon/WishlistIcon";
import styles from "./ProductThumbnail.module.css";

export interface ProductThumbnailProps {
  src: string;
  alt: string;
  wishlist?: boolean;
}

export default function ProductThumbnail({
  src,
  alt,
  wishlist = true,
}: ProductThumbnailProps) {
  return (
    <div className={styles.thumbnail}>
      <Image src={src} alt={alt} width={300} height={300} />

      {wishlist && (
        <div className={styles.wishlist}>
          <WishlistIcon />
        </div>
      )}
    </div>
  );
}
