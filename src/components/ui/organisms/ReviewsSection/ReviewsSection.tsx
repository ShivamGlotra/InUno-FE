import ReviewSnippet from "@/components/ui/molecules/ReviewSnippet/ReviewSnippet";
import StarRating from "@/components/ui/molecules/StarRating/StarRating";
import Heading from "@/components/ui/atoms/Heading/Heading";
import styles from "./ReviewsSection.module.css";

export default function ReviewsSection() {
  return (
    <section className={styles.section}>
      <Heading level={2}>Customer Reviews</Heading>

      <div className={styles.summary}>
        <StarRating rating={4.5} />
        <span>4.5 out of 5</span>
      </div>

      <div className={styles.reviews}>
        <ReviewSnippet
          author="John"
          rating={5}
          title="Excellent"
          content="Great product and fast shipping."
        />

        <ReviewSnippet
          author="Sarah"
          rating={4}
          title="Very good"
          content="Works exactly as expected."
        />
      </div>
    </section>
  );
}
