import DiscountBadge from "@/components/ui/atoms/DiscountBadge/DiscountBadge";
import Price from "@/components/ui/atoms/Price/Price";
import StrikethroughPrice from "@/components/ui/atoms/StrikethroughPrice/StrikethroughPrice";
import styles from "./PriceBlock.module.css";

export interface PriceBlockProps {
  price: number;
  originalPrice?: number;
  discount?: number;
}

export default function PriceBlock({
  price,
  originalPrice,
  discount,
}: PriceBlockProps) {
  return (
    <div className={styles.block}>
      <div className={styles.prices}>
        <Price amount={price} />

        {originalPrice !== undefined && (
          <StrikethroughPrice amount={originalPrice} />
        )}
      </div>

      {discount !== undefined && (
        <DiscountBadge percentage={discount} />
      )}
    </div>
  );
}
