import Accordion from "@/components/ui/molecules/Accordion/Accordion";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./QASection.module.css";

export default function QASection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Questions & Answers</Heading>

      <Accordion title="What is the return policy?">
        Items can be returned within the eligible return period.
      </Accordion>

      <Accordion title="How long does shipping take?">
        Standard shipping typically takes several business days.
      </Accordion>

      <Accordion title="Can I track my order?">
        Yes. Tracking information is provided after shipment.
      </Accordion>
    </section>
  );
}
