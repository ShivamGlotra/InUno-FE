import Image from "@/components/ui/atoms/Image/Image";
import Price from "@/components/ui/atoms/Price/Price";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./CartLineItemSummary.module.css";

export interface CartLineItemSummaryProps {
  name: string;
  image: string;
  quantity: number;
  price: number;
}

export default function CartLineItemSummary({
  name,
  image,
  quantity,
  price,
}: CartLineItemSummaryProps) {
  return (
    <div className={styles.item}>
      <Image src={image} alt={name} width={64} height={64} />

      <div className={styles.info}>
        <Text>{name}</Text>
        <Text size="sm">Qty: {quantity}</Text>
      </div>

      <Price amount={price * quantity} />
    </div>
  );
}
