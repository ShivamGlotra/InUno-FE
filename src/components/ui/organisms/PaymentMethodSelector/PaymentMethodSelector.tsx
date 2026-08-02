import PaymentMethodOption from "@/components/ui/molecules/PaymentMethodOption/PaymentMethodOption";
import styles from "./PaymentMethodSelector.module.css";

export default function PaymentMethodSelector() {
  return (
    <section className={styles.selector}>
      <h2>Payment Method</h2>

      <PaymentMethodOption
        id="card"
        name="Credit Card"
        description="Visa ending in 4242"
        selected
      />

      <PaymentMethodOption
        id="paypal"
        name="PayPal"
        description="Pay securely with PayPal"
      />
    </section>
  );
}
