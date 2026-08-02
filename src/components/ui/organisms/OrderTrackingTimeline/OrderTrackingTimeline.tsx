import Text from "@/components/ui/atoms/Text/Text";
import styles from "./OrderTrackingTimeline.module.css";

export interface TrackingEvent {
  title: string;
  date: string;
  completed?: boolean;
}

export interface OrderTrackingTimelineProps {
  events: TrackingEvent[];
}

export default function OrderTrackingTimeline({
  events,
}: OrderTrackingTimelineProps) {
  return (
    <div className={styles.timeline}>
      {events.map((event) => (
        <div
          key={`${event.title}-${event.date}`}
          className={styles.event}
        >
          <div
            className={`${styles.dot} ${
              event.completed ? styles.completed : ""
            }`}
          />

          <div>
            <strong>{event.title}</strong>
            <Text size="sm">{event.date}</Text>
          </div>
        </div>
      ))}
    </div>
  );
}
