import Link from "@/components/ui/atoms/Link/Link";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./Footer.module.css";

export default function Footer() {
  return (
    <footer className={styles.footer}>
      <div>
        <strong>Shop</strong>
        <Link href="#">Products</Link>
        <Link href="#">Categories</Link>
        <Link href="#">Deals</Link>
      </div>

      <div>
        <strong>Support</strong>
        <Link href="#">Contact</Link>
        <Link href="#">Shipping</Link>
        <Link href="#">Returns</Link>
      </div>

      <div>
        <Text>© 2026 Store. All rights reserved.</Text>
      </div>
    </footer>
  );
}
