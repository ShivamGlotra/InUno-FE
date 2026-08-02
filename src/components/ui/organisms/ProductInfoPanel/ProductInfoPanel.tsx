import PriceBlock from "@/components/ui/molecules/PriceBlock/PriceBlock";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import VariantSelector from "@/components/ui/molecules/VariantSelector/VariantSelector";
import QuantitySelector from "@/components/ui/molecules/QuantitySelector/QuantitySelector";
import Button from "@/components/ui/atoms/Button/Button";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ProductInfoPanel.module.css";

export default function ProductInfoPanel() {
  return (
    <section className={styles.panel}>
      <Heading level={1}>Wireless Headphones</Heading>

      <StarRating rating={4.5} />

      <PriceBlock
        price={79.99}
        originalPrice={99.99}
        discount={20}
      />

      <VariantSelector
        variants={[
          { id: "black", label: "Black" },
          { id: "white", label: "White" },
        ]}
      />

      <QuantitySelector />

      <Button>Add to Cart</Button>
    </section>
  );
}
