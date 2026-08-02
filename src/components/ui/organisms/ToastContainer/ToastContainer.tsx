import Toast from "@/components/ui/molecules/Toast/Toast";
import styles from "./ToastContainer.module.css";

export interface ToastContainerProps {
  messages?: string[];
}

export default function ToastContainer({
  messages = ["Item added to cart."],
}: ToastContainerProps) {
  return (
    <div className={styles.container}>
      {messages.map((message, index) => (
        <Toast
          key={`${message}-${index}`}
          message={message}
          variant="success"
        />
      ))}
    </div>
  );
}
