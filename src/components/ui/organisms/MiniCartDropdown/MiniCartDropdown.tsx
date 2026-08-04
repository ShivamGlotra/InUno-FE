import CartLineItemSummary from '@/components/ui/molecules/CartLineItemSummary/CartLineItemSummary';
import OrderSummaryRow from '@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow';
import Button from '@/components/ui/atoms/Button/Button';
import styles from './MiniCartDropdown.module.css';

export default function MiniCartDropdown() {
  return (
    <div className={styles.dropdown}>
      <h3>Your Cart</h3>

      <CartLineItemSummary
        name="Wireless Headphones"
        image="https://placehold.co/64x64"
        quantity={1}
        price={49.99}
      />

      <CartLineItemSummary
        name="USB Cable"
        image="https://placehold.co/64x64"
        quantity={2}
        price={9.99}
      />

      <OrderSummaryRow label="Total" amount={69.97} emphasized />

      <Button>View Cart</Button>
    </div>
  );
}
