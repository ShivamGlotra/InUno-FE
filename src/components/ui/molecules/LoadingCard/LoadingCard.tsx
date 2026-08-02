import Skeleton from "@/components/ui/atoms/Skeleton/Skeleton";
import styles from "./LoadingCard.module.css";

export interface LoadingCardProps {
  imageHeight?: number;
}

export default function LoadingCard({
  imageHeight = 200,
}: LoadingCardProps) {
  return (
    <div className={styles.card}>
      <Skeleton width="100%" height={`${imageHeight}px`} />

      <div className={styles.content}>
        <Skeleton width="70%" height="20px" />
        <Skeleton width="45%" height="16px" />
        <Skeleton width="30%" height="24px" />
      </div>
    </div>
  );
}
