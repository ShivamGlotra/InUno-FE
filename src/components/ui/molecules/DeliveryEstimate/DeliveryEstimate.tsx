import Icon from "@/components/ui/atoms/Icon/Icon";
import Text from "@/components/ui/atoms/Text/Text";
import styles from "./DeliveryEstimate.module.css";

export interface DeliveryEstimateProps {
  date: string;
  location?: string;
}

export default function DeliveryEstimate({
  date,
  location,
}: DeliveryEstimateProps) {
  return (
    <div className={styles.estimate}>
      <Icon>🚚</Icon>

      <div>
        <Text>Delivery by {date}</Text>
        {location && <Text size="sm">{location}</Text>}
      </div>
    </div>
  );
}
