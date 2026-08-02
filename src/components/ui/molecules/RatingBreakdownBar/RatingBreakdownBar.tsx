import Text from "@/components/ui/atoms/Text/Text";
import styles from "./RatingBreakdownBar.module.css";

export interface RatingBreakdownBarProps {
  rating: number;
  percentage: number;
}

export default function RatingBreakdownBar({
  rating,
  percentage,
}: RatingBreakdownBarProps) {
  return (
    <div className={styles.row}>
      <Text size="sm">{rating} star</Text>

      <div className={styles.bar}>
        <div
          className={styles.fill}
          style={{
            width: `${Math.min(100, Math.max(0, percentage))}%`,
          }}
        />
      </div>

      <Text size="sm">{percentage}%</Text>
    </div>
  );
}
