import styles from "./CartIconBadge.module.css";

export interface CartIconBadgeProps {
  count: number;
  max?: number;
  size?: "sm" | "md" | "lg";
  className?: string;
}

export default function CartIconBadge({
  count,
  max = 99,
  size = "md",
  className = "",
}: CartIconBadgeProps) {
  const displayCount = count > max ? `${max}+` : count;

  return (
    <span
      className={[styles.container, styles[size], className].join(" ")}
      aria-label={`${count} items in cart`}
    >
      <span className={styles.cart} aria-hidden="true">
        🛒
      </span>

      {count > 0 && (
        <span className={styles.badge} aria-hidden="true">
          {displayCount}
        </span>
      )}
    </span>
  );
}
