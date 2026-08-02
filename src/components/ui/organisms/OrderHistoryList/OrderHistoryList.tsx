import OrderSummaryRow from "@/components/ui/molecules/OrderSummaryRow/OrderSummaryRow";
import styles from "./OrderHistoryList.module.css";

export interface OrderHistoryItem {
  id: string;
  date: string;
  total: number;
  status: string;
}

export interface OrderHistoryListProps {
  orders: OrderHistoryItem[];
}

export default function OrderHistoryList({
  orders,
}: OrderHistoryListProps) {
  return (
    <section className={styles.list}>
      <h2>Order History</h2>

      {orders.map((order) => (
        <article key={order.id} className={styles.order}>
          <div>
            <strong>Order #{order.id}</strong>
            <p>{order.date}</p>
          </div>

          <OrderSummaryRow
            label={order.status}
            amount={order.total}
          />
        </article>
      ))}
    </section>
  );
}
