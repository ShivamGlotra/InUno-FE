import Badge from '@/components/ui/atoms/Badge/Badge';
import DiscountBadge from '@/components/ui/atoms/DiscountBadge/DiscountBadge';
import ShippingBadge from '@/components/ui/atoms/ShippingBadge/ShippingBadge';
import styles from './ProductBadgeGroup.module.css';

export interface ProductBadgeGroupProps {
  discount?: number;
  shipping?: boolean;
  label?: string;
}

export default function ProductBadgeGroup({ discount, shipping, label }: ProductBadgeGroupProps) {
  return (
    <div className={styles.group}>
      {label && <Badge>{label}</Badge>}
      {discount !== undefined && <DiscountBadge percentage={discount} />}
      {shipping && <ShippingBadge free />}
    </div>
  );
}
