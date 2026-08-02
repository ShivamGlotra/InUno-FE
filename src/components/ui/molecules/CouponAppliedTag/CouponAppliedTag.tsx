import Chip from "@/components/ui/atoms/Chip/Chip";
import styles from "./CouponAppliedTag.module.css";

export interface CouponAppliedTagProps {
  code: string;
  onRemove?: () => void;
}

export default function CouponAppliedTag({
  code,
  onRemove,
}: CouponAppliedTagProps) {
  return (
    <div className={styles.tag}>
      <Chip label={code} />

      {onRemove && (
        <button type="button" onClick={onRemove} className={styles.remove}>
          ×
        </button>
      )}
    </div>
  );
}
