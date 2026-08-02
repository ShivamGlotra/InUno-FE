import ProductThumbnail from "@/components/ui/molecules/ProductThumbnail/ProductThumbnail";
import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./ProductCard.module.css";

export interface ProductCardProps {
  name: string;
  image: string;
  price: number;
  originalPrice?: number;
  rating?: number;
}

export default function ProductCard({
  name,
  image,
  price,
  originalPrice,
  rating,
}: ProductCardProps) {
  return (
    <article className={styles.card}>
      <ProductThumbnail
        src={image}
        alt={name}
      />

      <div className={styles.content}>
        <Text>{name}</Text>

        {rating !== undefined && (
          <StarRating rating={rating} />
        )}

        <PriceBlock
          price={price}
          originalPrice={originalPrice}
        />
      </div>
    </article>
  );
}
