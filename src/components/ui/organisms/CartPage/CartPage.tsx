import CartLineItemSummary from '@/components/ui/molecules/CartLineItemSummary/CartLineItemSummary';
import OrderSummaryRow from '@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow';
import PromoCodeInput from '@/components/ui/molecules/PromoCodeInput/PromoCodeInput';
import Button from '@/components/ui/atoms/Button/Button';
import styles from './CartPage.module.css';

export interface CartPageProps {
  onCheckout?: () => void;
}

export default function CartPage({ onCheckout }: CartPageProps) {
  return (
    <main className={styles.page}>
      <section className={styles.items}>
        <h1>Shopping Cart</h1>

        <CartLineItemSummary
          name="Wireless Headphones"
          image="https://placehold.co/64x64"
          quantity={1}
          price={49.99}
        />

        <CartLineItemSummary
          name="USB-C Cable"
          image="https://placehold.co/64x64"
          quantity={2}
          price={14.99}
        />
      </section>

      <aside className={styles.summary}>
        <h2>Order Summary</h2>

        <OrderSummaryRow label="Subtotal" amount={79.97} />

        <OrderSummaryRow label="Shipping" amount={0} />

        <OrderSummaryRow label="Total" amount={79.97} emphasized />

        <PromoCodeInput />

        <Button onClick={onCheckout}>Checkout</Button>
      </aside>
    </main>
  );
}
