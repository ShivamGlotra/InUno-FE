import styles from "./Backdrop.module.css";

export interface BackdropProps {
  open?: boolean;
  onClick?: () => void;
  className?: string;
}

const Backdrop = ({ open = false, onClick, className = "" }: BackdropProps) => {
  return (
    <div
      className={[styles.backdrop, open ? styles.open : "", className].join(
        " ",
      )}
      onClick={onClick}
      aria-hidden={!open}
    />
  );
};

export default Backdrop;
