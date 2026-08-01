import styles from "./CartIconBadge.module.css";

interface Chip {
  variant: "default" | "primary" | "secondary" | "warning" | "danger";
  size: "sm" | "md" | "lg";
  selected?: boolean;
  disabled?: boolean;
  onClick?: () => void;
  onRemove?: () => void;
}

const Chip: React.FC<Chip> = ({
  variant,
  size,
  selected,
  disabled,
  onClick,
  onRemove,
}) => {
  const handleClick = () => {
    if (!disabled && onClick) {
      onClick();
    }
  };

  const handleRemove = (e: React.MouseEvent) => {
    e.stopPropagation();
    if (!disabled && onRemove) {
      onRemove();
    }
  };

  return (
    <div
      className={`${styles.chip} ${styles[variant]} ${styles[size]} ${selected ? styles.selected : ""} ${disabled ? styles.disabled : ""}`}
      onClick={handleClick}
    >
      <span className={styles.label}>Chip</span>
      {onRemove && !disabled && (
        <button className={styles.removeButton} onClick={handleRemove}>
          &times;
        </button>
      )}
    </div>
  );
};

export default Chip;
