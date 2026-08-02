import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./OrderReviewSummary.module.css";

export interface OrderReviewSummaryProps {
  rating: number;
  reviewCount: number;
}

export default function OrderReviewSummary({
  rating,
  reviewCount,
}: OrderReviewSummaryProps) {
  return (
    <div className={styles.summary}>
      <StarRating rating={rating} />
      <Text>
        {rating.toFixed(1)} out of 5 ({reviewCount} reviews)
      </Text>
    </div>
  );
}
