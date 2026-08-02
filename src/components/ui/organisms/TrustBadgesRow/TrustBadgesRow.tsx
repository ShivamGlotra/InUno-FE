import ShippingBadge from "@/components/ui/atoms/ShippingBadge/ShippingBadge";
import Badge from "@/components/ui/atoms/Badge/Badge";
import styles from "./TrustBadgesRow.module.css";

export default function TrustBadgesRow() {
  return (
    <div className={styles.row}>
      <ShippingBadge free />
      <Badge>Secure Checkout</Badge>
      <Badge>Easy Returns</Badge>
      <Badge>Trusted Seller</Badge>
    </div>
  );
}
