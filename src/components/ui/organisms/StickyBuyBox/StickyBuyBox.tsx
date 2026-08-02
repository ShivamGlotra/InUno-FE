import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import QuantitySelector from "@/components/ui/molecules/QuantitySelector/QuantitySelector";
import Button from "@/components/ui/atoms/Button/Button";
import styles from "./StickyBuyBox.module.css";

export default function StickyBuyBox() {
  return (
    <aside className={styles.box}>
      <PriceBlock
        price={79.99}
        originalPrice={99.99}
      />

      <QuantitySelector />

      <Button>Add to Cart</Button>

      <Button>Buy Now</Button>
    </aside>
  );
}
